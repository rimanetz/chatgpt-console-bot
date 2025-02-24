#!/bin/bash

OPENAI_API_KEY="OPENAI_API_KEY"

# функция для отправки текста в ChatGPT (или другую модель)
send_to_chatgpt() {
    local USER_MESSAGE=$1
    # модели для использования в порядке убывания затратности
    models=("gpt-4" "gpt-3.5-turbo" "gpt-3.0" "davinci" "curie" "babbage" "ada")
    
    for model in "${models[@]}"; do
        echo "запрос в OpenAI: $USER_MESSAGE"
        echo "модель: $model"
        
        RESPONSE=$(curl -s -X POST "https://api.openai.com/v1/chat/completions" \
            -H "Content-Type: application/json" \
            -H "Authorization: Bearer $OPENAI_API_KEY" \
            -d '{ 
                    "model": "'"$model"'",
                    "messages": [{"role": "user", "content": "'"$USER_MESSAGE"'"}], 
                    "max_tokens": 150 
                }')

        # логирование ответа от OpenAI
        echo "ответ от OpenAI: $RESPONSE"

        # проверка на наличие ошибки, если модель не существует или ошибка авторизации
        ERROR_MESSAGE=$(echo "$RESPONSE" | jq -r '.error.message')
        if [ "$ERROR_MESSAGE" != "null" ]; then
            echo "ошибка использования модели $model: $ERROR_MESSAGE"
            continue  # переход к следующей модели
        fi

        # получаем ответ от AI и проверяем на пустоту
        AI_REPLY=$(echo "$RESPONSE" | jq -r '.choices[0].message.content')

        # проверка на пустой ответ от OpenAI
        if [ -n "$AI_REPLY" ]; then
            echo "ответ : $AI_REPLY"
            echo "$AI_REPLY"
            return
        fi
    done

    # если все попытки не увенчались успехом
    echo "не удалось получить ответ от OpenAI."
    echo "ошибка при обработке вашего запроса."
    return
}

# функция для отправки сообщения вручную через терминал
send_message_from_bash() {
    echo "_____"
    read MESSAGE
    
    if [ "$MESSAGE" == "exit" ]; then
        echo "выход"
        exit 0
    fi
    
    # отправляем запрос в OpenAI и получаем ответ
    RESPONSE_FROM_AI=$(send_to_chatgpt "$MESSAGE")
    
    # вывод ответа
    echo "ответ: $RESPONSE_FROM_AI"
}

# цикл отправки сообщений вручную
while true
do
    send_message_from_bash
done
