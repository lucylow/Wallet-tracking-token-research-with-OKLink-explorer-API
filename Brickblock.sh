# Define BrickBlock token contract address
contract_address="0x4c341D939444E79e68074b0d1E96dDd3bc618104"

# Define OKLink API endpoint URLs
token_price_url="https://www.oklink.com/api/v1/tokens/$contract_address/price"
token_liquidity_url="https://www.oklink.com/api/v1/tokens/$contract_address/liquidity"
token_transactions_url="https://www.oklink.com/api/v1/tokens/$contract_address/transactions"

# Function to fetch data from OKLink API
fetch_data() {
    url=$1
    curl -s $url
}

# Fetch BrickBlock token price
token_price_data=$(fetch_data $token_price_url)
echo "BrickBlock Token Price Data:"
echo $token_price_data

# Fetch BrickBlock token liquidity
token_liquidity_data=$(fetch_data $token_liquidity_url)
echo -e "\nBrickBlock Token Liquidity Data:"
echo $token_liquidity_data

# Fetch BrickBlock token transactions
token_transactions_data=$(fetch_data $token_transactions_url)
echo -e "\nBrickBlock Token Transactions Data:"
echo $token_transactions_data
