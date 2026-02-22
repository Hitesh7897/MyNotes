############################################################
# 📌 Topic: Constants in R
############################################################

# ==========================================================
# 1️⃣ Introduction
# ==========================================================
# Constants are entities within a program whose value
# is not supposed to change once assigned.
#
# NOTE:
# R does NOT have true constants like some other languages.
# Instead, constants are enforced by naming conventions
# and programmer discipline.

# There are two basic types of constants:
# - Numeric constants
# - Character constants

# ==========================================================
# 2️⃣ Numeric Constants
# ==========================================================
# Numeric constants include all numbers used in a program.
# These can be:
# - Integer
# - Double (numeric)
# - Complex

typeof(6)     # numeric (double)
typeof(4L)    # integer
typeof(1+2i)  # complex

# ==========================================================
# 3️⃣ Character Constants
# ==========================================================
# Character constants are enclosed in:
# - Single quotes (' ')
# - Double quotes (" ")

typeof("Hitesh")
typeof('R Programming')

# ==========================================================
# 4️⃣ Declaration of Constants (Conceptual)
# ==========================================================
# In R (and Python), there is no keyword called `const`.
# Any variable can be reassigned.
#
# However, we FOLLOW A CONVENTION to indicate constants.

# ==========================================================
# 5️⃣ Assigning Values to Constants
# ==========================================================
# Convention:
# - Use UPPERCASE names for constants
# - Do NOT modify them later in code

PI <- 3.142
SQRT_A <- 32

PI
SQRT_A

# ❌ Technically allowed, but should be avoided
# PI <- 3.14   # breaks the idea of a constant

# ==========================================================
# 6️⃣ Constants Across Files (Conceptual Example)
# ==========================================================
# File: constants.R
PI <- 3.142
SQRTA <- 32

# File: test_constants.R
# source("constants.R")
# print(PI)
# print(SQRTA)

# ==========================================================
# 7️⃣ Rules and Naming Conventions for Constants
# ==========================================================
# Same rules as variables:
# - Letters, digits, dot (.) and underscore (_)
# - Cannot start with a digit
# - Cannot use reserved words
#
# Additional convention for constants:
# - Use ALL CAPS
# - Use underscore (_) as word separator

# Examples:
MAX_SIZE <- 100
DEFAULT_RATE <- 0.05
APP_NAME <- "R_TRAINING"

# ==========================================================
# 8️⃣ Best Practices for Constants
# ==========================================================
# - Define constants at the top of the script
# - Use uppercase names
# - Avoid modifying constants
# - Store shared constants in a separate file
# - Use source() to load constants

# ==========================================================
# Quiz, Assignment and Resources
# ==========================================================
# These will be covered as exercises.

# ==========================================================
# End of File
# ==========================================================