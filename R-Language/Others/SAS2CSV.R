# Install and load required package
if (!require("haven")) {
  install.packages("haven")
  library(haven)
}

# Set your input and output directories
input_dir <- "C:/Users/hbg16075/Downloads/19OCT2025/RAW/SAS"
output_dir <- "C:/Users/hbg16075/Downloads/19OCT2025/RAW/CSV"

# Create output directory if it doesn't exist
if (!dir.exists(output_dir)) {
  dir.create(output_dir, recursive = TRUE)
}

# List all .sas7bdat files in the input directory
sas_files <- list.files(input_dir, pattern = "\\.sas7bdat$", full.names = TRUE)

# Loop over each file and convert to CSV
for (sas_file in sas_files) {
  # Read the .sas7bdat file
  data <- haven::read_sas(sas_file)
  
  # Create corresponding CSV filename
  file_name <- tools::file_path_sans_ext(basename(sas_file))
  csv_file <- file.path(output_dir, paste0(file_name, ".csv"))
  
  # Write to CSV
  write.csv(data, csv_file, row.names = FALSE)
  
  cat("Converted:", basename(sas_file), "->", basename(csv_file), "\n")
}

cat("✅ All files converted.\n")
