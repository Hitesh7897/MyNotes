############################################################
# 📌 Topic: <TOPIC NAME>
# 🎥 Session: <Session TITLE>
# 📂 Playlist: R Programming – Full Course
############################################################

# ==========================================================
# 1️⃣ What you will learn in this Session
# ==========================================================
# - Point 1
# - Point 2
# - Point 3
# - Point 4

# ==========================================================
# 2️⃣ Prerequisites (if any)
# ==========================================================
# - Basic R syntax
# - RStudio installed
# - Knowledge of vectors (optional)

# ==========================================================
# 3️⃣ Why this topic matters (Real-world context)
# ==========================================================
# Explain where this is used in:
# - Data Analysis
# - Statistics
# - Clinical / Business / ML projects

# ==========================================================
# 4️⃣ Setup (Libraries / Data)
# ==========================================================

# Install once if needed
# install.packages("dplyr")

# Load libraries
library(dplyr)

# ==========================================================
# 5️⃣ Core Concept Explanation
# ==========================================================

# Step 1: Basic example
x <- c(10, 20, 30, 40)
x

# Step 2: Explain what is happening
# R is vectorized → operations apply to all elements
x + 5

# ==========================================================
# 6️⃣ Hands-on Examples ( coding section)
# ==========================================================

# Example 1: Real-world style data
sales <- c(12000, 15000, 18000, 22000)
sales

# Increase sales by 10%
sales_updated <- sales * 1.10
sales_updated

# Example 2: Logical conditions
sales > 15000

# ==========================================================
# 7️⃣ Common Mistakes & Pitfalls ⚠️
# ==========================================================

# ❌ Mixing data types
mixed_data <- c(1, "A", TRUE)
mixed_data
# R converts everything to character

# ❌ Forgetting library()
# select() will fail if dplyr is not loaded

# ==========================================================
# 8️⃣ Performance / Best Practices 💡
# ==========================================================
# - Prefer vectorized operations
# - Avoid unnecessary loops
# - Keep objects clearly named

# ==========================================================
# 9️⃣ Interview / Exam / Practice Questions
# ==========================================================
# Q1: Why is R called a vectorized language?
# Q2: What happens if we add a number to a logical vector?
# Q3: How does R handle type coercion?

# ==========================================================
# 🔟 Summary (Speak this out loud in the Session)
# ==========================================================
# - Key takeaways point 1
# - Key takeaways point 2
# - Key takeaways point 3

# ========================================================== 