

```bash

grep -o -i "CVE-2024-[0-9]\{5\}" test.txt | sort -u

```

![GrepOutput](https://github.com/user-attachments/assets/dc4b0a2f-d477-4d24-b5bd-0274b40ccff8)



Some advanced **`grep`** and **`sed`** one-liners, arranged in a comprehensive and organized manner, with explanations and example outputs.

### **Advanced `grep` One-Liners**

---

1. **Search for a Pattern in Multiple Files and Show Filenames**
   - Searches for a pattern in multiple files and prints only the filenames containing the pattern.
   ```bash
   grep -l "pattern" *.txt
   ```
   **Example:**
   ```bash
   grep -l "TODO" *.txt
   ```
   **Output:**
   ```
   project1.txt
   project2.txt
   ```

---

2. **Count the Number of Occurrences of a Pattern in Files**
   - Counts the number of times a pattern appears in a file or files.
   ```bash
   grep -o "pattern" *.txt | wc -l
   ```
   **Example:**
   ```bash
   grep -o "error" /var/log/*.log | wc -l
   ```
   **Output:**
   ```
   42
   ```

---

3. **Search Recursively for a Pattern in a Directory**
   - Recursively searches for a pattern within a directory and shows the matched lines with line numbers.
   ```bash
   grep -r -n "pattern" /path/to/directory
   ```
   **Example:**
   ```bash
   grep -r -n "TODO" /home/user/projects/
   ```
   **Output:**
   ```
   /home/user/projects/project1/main.py:32:    # TODO: Fix this bug
   /home/user/projects/project2/app.js:10:    // TODO: Refactor this function
   ```

---

4. **Show Context (Before and After) of Each Match**
   - Shows a few lines before and after the matched pattern to provide context.
   ```bash
   grep -C 3 "pattern" filename
   ```
   **Example:**
   ```bash
   grep -C 3 "error" /var/log/syslog
   ```
   **Output:**
   ```
   Mar 10 12:15:30 myserver network: started
   Mar 10 12:15:32 myserver error: connection failed
   Mar 10 12:15:33 myserver network: reconnecting
   Mar 10 12:15:35 myserver error: timeout
   Mar 10 12:15:36 myserver network: retrying
   ```

---

5. **Invert Match (Exclude Lines Containing a Pattern)**
   - Displays lines that do **not** contain the specified pattern.
   ```bash
   grep -v "pattern" filename
   ```
   **Example:**
   ```bash
   grep -v "TODO" source_code.py
   ```
   **Output:**
   ```
   def main():
       print("Hello, World!")
   ```

---

6. **Search for Multiple Patterns Using OR Logic**
   - Searches for multiple patterns (i.e., matches either pattern).
   ```bash
   grep -E "pattern1|pattern2" filename
   ```
   **Example:**
   ```bash
   grep -E "error|warning" /var/log/syslog
   ```
   **Output:**
   ```
   Mar 10 12:15:32 myserver error: connection failed
   Mar 10 12:16:01 myserver warning: disk space low
   ```

---

7. **Print Only the Matching Part of the Line (Not the Whole Line)**
   - Prints only the part of the line that matches the pattern.
   ```bash
   grep -o "pattern" filename
   ```
   **Example:**
   ```bash
   grep -o "error" /var/log/syslog
   ```
   **Output:**
   ```
   error
   error
   error
   ```

---

8. **Find Files with a Pattern in Their Content**
   - Finds files containing a specific pattern in their content using `find` and `grep`.
   ```bash
   find /path/to/search -type f -exec grep -l "pattern" {} +
   ```
   **Example:**
   ```bash
   find /home/user/projects -type f -exec grep -l "TODO" {} +
   ```
   **Output:**
   ```
   /home/user/projects/project1/main.py
   /home/user/projects/project2/code.js
   ```

---

### **Advanced `sed` One-Liners**

---

1. **Substitute (Replace) Text in a File**
   - Replaces the first occurrence of a pattern with a new string.
   ```bash
   sed 's/old-pattern/new-pattern/' filename
   ```
   **Example:**
   ```bash
   sed 's/apple/banana/' fruits.txt
   ```
   **Output in `fruits.txt`:**
   ```
   I have a banana.
   I like banana pie.
   ```

---

2. **Global Substitute (Replace All Occurrences)**
   - Replaces all occurrences of a pattern in the file.
   ```bash
   sed 's/old-pattern/new-pattern/g' filename
   ```
   **Example:**
   ```bash
   sed 's/foo/bar/g' file.txt
   ```
   **Output in `file.txt`:**
   ```
   bar is here.
   bar should be replaced.
   bar for everyone.
   ```

---

3. **Delete Lines Matching a Pattern**
   - Deletes lines containing a specific pattern.
   ```bash
   sed '/pattern/d' filename
   ```
   **Example:**
   ```bash
   sed '/^#/d' config.cfg
   ```
   **Output in `config.cfg`:**
   ```
   user=admin
   password=secret
   host=127.0.0.1
   ```

---

4. **Print Specific Lines Matching a Pattern**
   - Prints only the lines containing a specific pattern.
   ```bash
   sed -n '/pattern/p' filename
   ```
   **Example:**
   ```bash
   sed -n '/error/p' /var/log/syslog
   ```
   **Output:**
   ```
   Mar 10 12:15:32 myserver error: connection failed
   Mar 10 12:16:01 myserver error: timeout
   ```

---

5. **In-place Editing of Files (No Output to Screen)**
   - Edits a file directly, making changes without displaying output.
   ```bash
   sed -i 's/old-pattern/new-pattern/' filename
   ```
   **Example:**
   ```bash
   sed -i 's/localhost/127.0.0.1/' /etc/hosts
   ```
   **Output in `/etc/hosts`:**
   ```
   127.0.0.1   localhost
   127.0.1.1   myserver.local
   ```

---

6. **Insert Text Before or After a Line**
   - Inserts text before or after a matched line.
   - **Before:**
     ```bash
     sed '/pattern/i\New text' filename
     ```
   - **After:**
     ```bash
     sed '/pattern/a\New text' filename
     ```
   **Example:**
   ```bash
   sed '/^$/i\# This is an empty line' file.txt
   sed '/^$/a\# This is an empty line' file.txt
   ```

---

7. **Replace Text in a Specific Range of Lines**
   - Replace text only within a given range of lines.
   ```bash
   sed '5,10s/old-pattern/new-pattern/' filename
   ```
   **Example:**
   ```bash
   sed '5,10s/foo/bar/' file.txt
   ```
   **Explanation:**  
   This replaces "foo" with "bar" only between lines 5 and 10 in `file.txt`.

---

8. **Delete Blank Lines**
   - Deletes all blank lines from a file.
   ```bash
   sed '/^$/d' filename
   ```
   **Example:**
   ```bash
   sed '/^$/d' file.txt
   ```
   **Output:**
   ```
   Line 1
   Line 2
   Line 3
   ```

---

9. **Replace Text Using Regular Expressions**
   - Replace text that matches a regular expression.
   ```bash
   sed 's/[0-9]\{3\}/XXX/' filename
   ```
   **Example:**
   ```bash
   sed 's/[0-9]\{3\}/XXX/' file.txt
   ```
   **Explanation:**  
   This replaces any three consecutive digits with "XXX".

---

