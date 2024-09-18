

# TODO: make --location value dynamic or driven by user input.
echo "Creating Dataset for reference data and Table for Exchange Rates"
echo "Estimated time: 5 seconds"
# Check if the dataset exists
if bq --location=EU show --dataset {solution_name}; then
  echo "Dataset already exists."
else
  # Create the dataset if it does not exist
  bq --location=EU mk -d {solution_name}
  # Optional: Create a table. Example:
  # bq mk \
  #   -t \
  #   {solution_name}.exchange_rates \
  #   base_currency:STRING,target_currency:STRING,rate:FLOAT,date:DATE
fi