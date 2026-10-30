#!/usr/bin/env bash
set -e

cd "$(dirname "$0")"

if [ ! -d "venv" ]; then
    echo "יוצר סביבה וירטואלית..."
    python -m venv venv
fi

echo "מתקין ספריות..."
venv/Scripts/pip install -q -r requirements.txt

echo "השרת עולה בכתובת http://localhost:8000 - לעצירה לחץ Ctrl+C"

.\.venv\Scripts\Activate.ps1
uvicorn app.app:app --host 0.0.0.0 --port 8000
