ChatGPT Console Bot

The script allows you to integrate the OpenAI API with the command line, enabling communication with AI directly from your Linux terminal.
Description

With this script, you can:

-Send requests to ChatGPT through the command line.
-Use different OpenAI models (such as GPT-4, GPT-3.5, and others).
-Manage quotas and plans through the OpenAI API.

Features

Chat with AI through the console.

-Support for multiple OpenAI models, with the ability to switch models in the code.
-Request and response logging for further analysis.
-Checking model availability and quota through the OpenAI API.

Requirements

-Linux/UNIX (or compatible system)
-cURL — for sending HTTP requests.
-jq — for processing JSON.
-OpenAI API Key — required to access the OpenAI API.

Installation

Clone the repository:

git clone https://github.com//rimanetz/chatgpt-console-bot.git cd chatgpt-console-bot 

Install the necessary dependencies:

Make sure curl and jq are installed. If not, install them: sudo apt install curl jq 
Open the script and replace the variables:
Replace OPENAI_API_KEY with your OpenAI API Key.

Run the script:
./gptconsolebot.sh

Usage

To chat with AI via the command line:
Simply enter a message in the console, and the bot will send the request to ChatGPT and return the response.
OpenAI Models

This script supports the following models:

-gpt-4 (if available)
-gpt-3.5-turbo
-gpt-3.0
-Older models (such as davinci, curie, babbage, ada) — for compatibility, but they are deprecated.

The script will attempt to use the lowest-cost available model, but you can change the model in the code for more expensive options.
Notes
To use GPT-4 or other more powerful models, you need to upgrade your OpenAI plan.
License
This project is licensed under the MIT License. See the LICENSE file for more details.





****ChatGPT Console Bot****


Скрипт интегрирует OpenAI API с командной строкой, чтобы общаться с ИИ через терминал в Linux.

Описание

С помощью этого скрипта можно:
-Отправлять запросы к ChatGPT через командную строку.
-Использовать различные модели OpenAI (например, GPT-4, GPT-3.5 и другие).
-Работать с квотами и тарифами OpenAI API.

Особенности

-Возможность общения с ИИ через консоль.
-Поддержка нескольких моделей ChatGPT с возможностью их смены в коде.
-Логирование запросов и ответов для дальнейшего анализа.
-Проверка доступности модели и квоты через OpenAI API.

Требования

-Linux/Unix (или совместимая система)
-cURL — для отправки HTTP запросов.
-jq — для обработки JSON.
-OpenAI API Key — ключ для доступа к API OpenAI.

Установка

Клонируйте репозиторий:

git clone https://github.com/rimanetz/chatgpt-console-bot.git cd chatgpt-console-bot 

Установите необходимые зависимости:

-Убедитесь, что у вас установлен curl и jq. Если нет, установите их: sudo apt install curl jq 

Откройте скрипт и замените переменные:

- Замените OPENAI_API_KEY на ваш OpenAI API Key.

Запустите скрипт:

./gptconsolebot.sh
 
Использование

Для общения с ИИ через командную строку:

Просто введите сообщение в консоль, и бот отправит запрос в ChatGPT, а затем вернёт ответ.
Модели OpenAI
Тут же поддерживаются следующие модели:

-gpt-4 (если доступно)
-gpt-3.5-turbo
-gpt-3.0

Старые модели (например, davinci, curie, babbage, ada) — для совместимости, но они устарели.

Скрипт будет пытаться использовать доступную модель с самым низким тарифом, но при необходимости можно изменить модель в коде для более дорогих вариантов.
Примечания
Для использования GPT-4 или других более мощных моделей требуется обновить тарифный план в OpenAI.

Лицензия

Распространяется под лицензией MIT. Подробности см. в файле LICENSE.
