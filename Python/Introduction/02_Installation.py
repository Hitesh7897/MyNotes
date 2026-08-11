"""
============================================================
            PYTHON INSTALLATION AND SETUP
============================================================

Topic  : Installing and Setting Up Python

Description:
This chapter explains how to install Python on different
operating systems and IDEs, verify the installation,
and understand the differences between Python 2 and Python 3.
"""

# ============================================================
# INTRODUCTION
# ============================================================

"""
Before writing Python programs, Python must be installed on
your computer.

Python can be installed on:
    • Windows
    • macOS
    • Linux

After installation, you can write Python code using various
IDEs (Integrated Development Environments) such as:

    • VS Code (Recommended)
    • PyCharm
    • Jupyter Notebook
    • Eclipse + PyDev
    • Atom (Legacy - No longer maintained)
"""

# ============================================================
# INSTALLING PYTHON
# ============================================================

"""
Official Website
----------------
https://www.python.org/

Steps:

1. Visit https://www.python.org/
2. Click Downloads.
3. Download the latest stable version.
4. Run the installer.
5. Check:
       ☑ Add Python to PATH
6. Click Install Now.
7. Wait until installation completes.
8. Open Command Prompt and verify the installation.
"""

# ============================================================
# INSTALL OR UPGRADE USING COMMAND LINE (WINDOWS)
# ============================================================

"""
Open Windows Terminal or PowerShell as Administrator.

Search available Python versions:

    winget search Python.Python

Install the latest version:

    winget install Python.Python

Install a specific version:

    winget install Python.Python.3.14

Upgrade an existing installation:

    winget upgrade Python.Python
"""

# ============================================================
# SETTING UP PYTHON WITH ATOM (LEGACY)
# ============================================================

"""
NOTE:
Atom has been discontinued by GitHub.
VS Code is now the recommended editor.

If you still use Atom:

1. Install Python.
2. Download and install Atom.
3. Open:
       File → Settings → Editor

Configure:
    • Soft Tabs
    • Auto Indent
    • Show Indent Guide
    • Tab Length = 4

Install package:

    atom-runner

Create a file:

    demo.py

Optional:
If Atom detects an older Python version,
modify config.cson:

runner:
    python: "/Library/Python3"

(Change the path according to your installation.)
"""

# ============================================================
# SETTING UP PYTHON WITH ECLIPSE
# ============================================================

"""
Requirements:

1. Install Java JDK
2. Install Eclipse IDE
3. Install the PyDev plugin

Installation Steps:

1. Open Eclipse.
2. Go to:
       Help → Install New Software

3. Add update site:

       http://www.pydev.org/updates

4. Install PyDev.
5. Restart Eclipse.
6. Create a new project:

       File → New → PyDev Project

7. Configure:

    • Python Interpreter
    • Grammar Version

Create:

demo.py

Example:

print("Hello World")
"""

# ============================================================
# SETTING UP PYCHARM
# ============================================================

"""
PyCharm is one of the most popular IDEs for Python.

Download:

https://www.jetbrains.com/pycharm/

Community Edition:
    • Free
    • Suitable for beginners

Professional Edition:
    • Paid
    • Includes advanced web development features
"""

# ============================================================
# JUPYTER NOTEBOOK
# ============================================================

"""
Jupyter Notebook is widely used for:

• Data Science
• Machine Learning
• Artificial Intelligence

Online Version:

https://notebooks.gesis.org/

Google Colab:

https://colab.research.google.com/

Advantages:

• No installation required
• Free GPU access (Google Colab)
• Easy sharing
"""

# ============================================================
# ANACONDA
# ============================================================

"""
Anaconda is a Python distribution specially designed for:

• Data Science
• Machine Learning
• Scientific Computing

Download:

https://www.anaconda.com/products/individual

Includes:

• Python
• Jupyter Notebook
• Spyder IDE
• Conda Package Manager
• Hundreds of scientific libraries
"""

# ============================================================
# CHECKING PYTHON VERSION
# ============================================================

"""
Method 1: Command Prompt

python --version

or

python -V
"""

"""
Method 2: Python Interpreter
"""

import sys

print(sys.version)

"""
Method 3: Interactive Python Console

Open Python:

>>>

The version is displayed automatically.
"""

# ============================================================
# PYTHON 2 VS PYTHON 3
# ============================================================

"""
| Feature              | Python 2              | Python 3              |
|---------------------|----------------------|-----------------------|
| Release             | 2000                 | 2008                  |
| Support             | Ended (2020)         | Active                |
| print               | print "Hello"        | print("Hello")        |
| Division            | 5/2 = 2             | 5/2 = 2.5             |
| Unicode             | Limited             | Full Unicode Support  |
| Performance         | Slower improvements | Better                |
| Future Development  | No                  | Yes                   |

Recommendation:

Always use Python 3 for new projects.
"""

# ============================================================
# QUIZ
# ============================================================

"""
1. Who developed Python?

2. What is the official Python website?

3. Which IDE is recommended for beginners?

4. Which command checks the installed Python version?

5. What is Anaconda primarily used for?

6. Is Python 2 still officially supported?

7. Which cloud-based notebook is provided by Google?

8. What package manager comes with Anaconda?
"""

# ============================================================
# ASSIGNMENT
# ============================================================

"""
1. Install Python on your computer.

2. Verify the installation using:

       python --version

3. Install VS Code or PyCharm.

4. Create a file named:

       hello.py

5. Write the following program:

print("Hello, Python!")

6. Execute the program using:

python hello.py

7. Find your installed Python path.

8. Compare Python 2 and Python 3 in your own words.
"""

# ============================================================
# RESOURCES
# ============================================================

"""
Official Documentation
https://docs.python.org/3/

Python Downloads
https://www.python.org/

Think Python
https://www.greenteapress.com/thinkpython/

Javatpoint Python Tutorial
https://www.javatpoint.com/python-tutorial

Programiz Python
https://www.programiz.com/python-programming

ThisPointer
https://thispointer.com/learn-python/

CodesCracker
https://codescracker.com/python/program/index.htm
"""