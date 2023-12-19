#!/bin/bash
PROCESS_NAME="helloreact"

if pgrep -f "$PROCESS_NAME" > /dev/null; then
    echo "Processo $PROCESS_NAME está em execução. Parando..."
    
    sudo supervisorctl stop "$PROCESS_NAME"
    sleep 5

    echo "Processo $PROCESS_NAME parado com sucesso."
else
    echo "Processo $PROCESS_NAME não está em execução. Nada a parar."
    exit 0
fi
