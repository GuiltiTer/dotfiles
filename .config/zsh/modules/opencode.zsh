local OPENCODE_SERVER_PORT=8787
local OPENCODE_MODEL=""

function start_opencode_server() {
  if curl -s "localhost:$OPENCODE_SERVER_PORT/global/health" > /dev/null 2>&1; then
    return 0
  fi
  opencode serve --port "$OPENCODE_SERVER_PORT" > /dev/null 2>&1 &
  disown
  sleep 2
}

function select_opencode_model() {
  local models=$(opencode models 2>/dev/null)
  OPENCODE_MODEL=$(echo "$models" | sk --prompt="Select model> ")
  echo "Model: $OPENCODE_MODEL"
}

function query_to_opencode_server() {
  start_opencode_server
  local query="$*"
  local sid=$(curl -sX POST "localhost:$OPENCODE_SERVER_PORT/session" | jq -r .id)
  local data=$(__build_opencode_data "$query")
  local result=$(curl -sX POST "localhost:$OPENCODE_SERVER_PORT/session/$sid/message" -H "Content-Type: application/json" -d "$data")
  echo "$result" | __cleanup_opencode_response | jq -r '.parts[] | select(.type=="text") | .text'
}

function __cleanup_opencode_response() {
  python3 -c "import sys,json; print(json.dumps(json.loads(sys.stdin.read(), strict=False)))"
}

function __build_opencode_data() {
  local query="$1"
  if [ -n "$OPENCODE_MODEL" ]; then
    local provider="${OPENCODE_MODEL%%/*}"
    local model="${OPENCODE_MODEL#*/}"
    jq -n --arg q "$query" --arg p "$provider" --arg m "$model" '{"parts": [{"type": "text", "text": $q }], "agent": "plan", "model": {"providerID": $p, "modelID": $m}}'
  else
    jq -n --arg q "$query" '{"parts": [{"type": "text", "text": $q }], "agent": "plan"}'
  fi
}
