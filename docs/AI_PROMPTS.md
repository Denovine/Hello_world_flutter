# AI Prompts Used & Learning Reflections

This file documents the AI prompts used while preparing the repository documentation and my reflections on what worked.

Prompts (examples):

1. "Create a README for a Flutter 'Hello World' project with setup instructions for Windows, and include a simple Dart API example and instructions to zip and push to GitHub."

2. "Write a small Dart script that performs a GET request to jsonplaceholder.typicode.com and prints the JSON response. Include dependency to `http` package."

3. "List common Flutter and Dart errors for beginners and provide short troubleshooting steps."

How prompts were refined:
- Start broad: initial prompts described high-level goals (README + examples).
- Add specifics: requested Windows PowerShell commands, where to place the API script (`bin/`), and required dependency (`http`).
- Iteration: split the task into doc updates and small code additions to keep changes minimal and easy to test.

Learning reflections:
- Small, specific directives produce the clearest results (e.g., "Add `bin/api_example.dart` that GETs /todos/1").
- Provide file paths when you want content generated in specific locations — reduces ambiguity.
- For code changes in an existing repo, mention not to modify unrelated files (keeps patch small).
- When adding dependencies, update `pubspec.yaml` and include instructions to run `flutter pub get`.

If you want the raw prompts used during this session (with temperature/other model params), I can include them here as well.
