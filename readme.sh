#!/bin/bash

# Create README files in each directory with their respective content

# Define the content for each folder's README file
create_readme() {
    folder=$1
    content=$2
    echo "$content" > "$folder/README.md"
}

# 1. README for the challenges folder
challenges_readme="
# Java Study Group - Challenges

This folder contains Java programming challenges designed to improve your problem-solving skills. The challenges vary in difficulty, from beginner to advanced, and are meant to be solved independently or discussed in the study group.

## Folder Structure:

\`\`\`plaintext
challenges/
├── beginner/
│   ├── challenge1.md
│   ├── challenge2.md
│   └── ...
├── intermediate/
│   ├── challenge1.md
│   ├── challenge2.md
│   └── ...
└── advanced/
    ├── challenge1.md
    ├── challenge2.md
    └── ...
\`\`\`

- **beginner/**: Basic challenges focusing on fundamental programming concepts.
- **intermediate/**: Challenges that require knowledge of algorithms, data structures, and object-oriented programming.
- **advanced/**: Complex challenges that may involve multi-threading, design patterns, and real-world problem-solving.

Feel free to take on challenges from the folder that suits your level. After solving a challenge, share your solution in the study group for feedback.

Happy coding! 💻
"

# 2. README for the exercises folder
exercises_readme="
# Java Study Group - Exercises

This folder contains Java exercises aimed at practicing different concepts and skills. Exercises cover various topics, such as control flow, object-oriented programming, collections, and more.

## Folder Structure:

\`\`\`plaintext
exercises/
├── beginner/
│   ├── exercise1.java
│   ├── exercise2.java
│   └── ...
├── intermediate/
│   ├── exercise1.java
│   ├── exercise2.java
│   └── ...
└── advanced/
    ├── exercise1.java
    ├── exercise2.java
    └── ...
\`\`\`

- **beginner/**: Exercises designed for beginners to get a strong foundation in Java.
- **intermediate/**: Exercises aimed at reinforcing your understanding of more advanced Java topics.
- **advanced/**: Challenging exercises that require more expertise in Java, including multi-threading, databases, and design patterns.

Once you complete an exercise, you can discuss the solution with the study group or submit your code for review.

Keep practicing! 💪
"

# 3. README for the resources folder
resources_readme="
# Java Study Group - Resources

This folder contains useful resources to help you with your Java studies. Resources may include articles, tutorials, videos, books, and any other useful materials to enhance your learning experience.

## Folder Structure:

\`\`\`plaintext
resources/
├── books/
│   ├── java-tutorial.pdf
│   ├── effective-java.pdf
│   └── ...
├── tutorials/
│   ├── java-basics.md
│   ├── object-oriented-programming.md
│   └── ...
└── videos/
    ├── java-introduction.mp4
    ├── object-oriented-design.mp4
    └── ...
\`\`\`

- **books/**: A collection of Java programming books.
- **tutorials/**: Written tutorials covering various Java topics.
- **videos/**: Videos explaining Java concepts in detail.

Explore these resources to improve your Java skills. Feel free to contribute additional resources as you find useful materials.

Happy learning! 📚
"

# 4. README for the LICENSE folder
license_readme="
# Java Study Group - LICENSE

This folder contains the license for the Java Study Group repository. The license file provides the terms under which the content in this repository can be used, modified, and distributed.

Make sure to check the LICENSE file before using any code, documentation, or other materials in this repository.

Thank you for respecting the license terms!
"

# 5. README for the code-reviews folder
code_reviews_readme="
# Java Study Group - Code Reviews

This folder contains code reviews for various Java projects and challenges. Code reviews are a critical part of improving your programming skills, and they provide an opportunity to get feedback on your code.

## Folder Structure:

\`\`\`plaintext
code-reviews/
├── beginner/
│   ├── review1.md
│   ├── review2.md
│   └── ...
├── intermediate/
│   ├── review1.md
│   ├── review2.md
│   └── ...
└── advanced/
    ├── review1.md
    ├── review2.md
    └── ...
\`\`\`

- **beginner/**: Code reviews for beginner-level projects and exercises.
- **intermediate/**: Code reviews for intermediate projects that require a deeper understanding of Java.
- **advanced/**: Code reviews for more complex projects that use advanced concepts.

Use these reviews to improve your coding practices and learn from others.

Keep reviewing and improving! 📝
"

# 6. README for the meeting-notes folder
meeting_notes_readme="
# Java Study Group - Meeting Notes

This folder contains notes from our study group meetings. Meeting notes include discussions, questions, and topics covered during each meeting.

## Folder Structure:

\`\`\`plaintext
meeting-notes/
├── meeting-01.md
├── meeting-02.md
└── ...
\`\`\`

- Each meeting note will document the date, agenda, and key takeaways from the study group meeting.

Feel free to contribute any additional notes or summaries for future meetings.

Stay involved and keep learning! 📅
"

# 7. README for the tools folder
tools_readme="
# Java Study Group - Tools

This folder contains tools that are useful for Java development. These tools may include IDE setups, build tools, libraries, or frameworks that make coding easier and more efficient.

## Folder Structure:

\`\`\`plaintext
tools/
├── maven/
│   ├── maven-setup-guide.md
│   └── ...
├── intellij-setup/
│   ├── intellij-setup-guide.md
│   └── ...
└── others/
    ├── git-guide.md
    └── ...
\`\`\`

- **maven/**: Guides and configurations for using Maven, a popular Java build tool.
- **intellij-setup/**: Guides for setting up IntelliJ IDEA for Java development.
- **others/**: Additional tools, including Git setup, JDK installation, etc.

Feel free to add new tools that you find useful for Java development.

Happy coding with the best tools! 🛠️
"

# 8. README for the discussions folder
discussions_readme="
# Java Study Group - Discussions

This folder is dedicated to ongoing discussions in the study group. Discussions can include topics related to Java programming concepts, project ideas, challenges, and anything else relevant to the study group.

## Folder Structure:

\`\`\`plaintext
discussions/
├── topic1.md
├── topic2.md
└── ...
\`\`\`

- Each discussion topic will cover a specific concept or project. You can contribute by creating a new file with your own discussion or by commenting on existing ones.

Join the conversation and share your ideas! 💬
"

# Create README files for each folder
create_readme "challenges" "$challenges_readme"
create_readme "exercises" "$exercises_readme"
create_readme "resources" "$resources_readme"
##create_readme "LICENSE" "$license_readme"
create_readme "code-reviews" "$code_reviews_readme"
create_readme "meeting-notes" "$meeting_notes_readme"
create_readme "tools" "$tools_readme"
create_readme "discussions" "$discussions_readme"

echo "All README files have been created successfully."
