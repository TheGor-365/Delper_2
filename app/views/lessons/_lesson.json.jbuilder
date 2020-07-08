json.extract! lesson, :id, :technology_name, :lesson_author, :lesson_title, :lesson_purpose, :lesson_question, :lesson_answer, :lesson_body, :lesson_snippet, :lesson_example, :created_at, :updated_at
json.url lesson_url(lesson, format: :json)
