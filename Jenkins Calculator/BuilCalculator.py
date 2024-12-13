

import re
from colorama import Fore, Style, init

# Initialize colorama
init(autoreset=True)

def process_input_file(file_path):
    total_minutes = 0
    total_entries = 0
    minute_values = []  # To store the minutes for formatted output
    build_range_start = None
    build_range_end = None
    build_range_count = 0
    
    # Open the input file
    with open(file_path, 'r') as file:
        lines = file.readlines()
        
        for line in lines:
            # Count only lines that start with '#'
            if line.startswith('#'):
                total_entries += 1
                
                # Extract the build number and minute values
                build_match = re.match(r'#(\d+)', line)  # Extract the build number (#49, #48, etc.)
                if build_match:
                    build_number = int(build_match.group(1))
                    
                    # Determine the range of build numbers (based on input)
                    if build_range_start is None or build_number < build_range_start:
                        build_range_start = build_number
                    if build_number > build_range_end if build_range_end else build_number:
                        build_range_end = build_number
                        
                # Look for minute values in lines like 'X min' and extract the minutes
                match = re.search(r'(\d+)\s+min', line)  # Looks for a pattern like 'X min'
                if match:
                    minutes = int(match.group(1))
                    total_minutes += minutes
                    minute_values.append(minutes)  # Store minutes for formatted output
    
    # Convert total minutes to hours and minutes
    total_hours = total_minutes // 60
    remaining_minutes = total_minutes % 60
    
    return total_minutes, total_entries, minute_values, total_hours, remaining_minutes, build_range_start, build_range_end, build_range_count

def main():
    # Path to the input file (you can replace this with the actual file path)
    file_path = 'input.txt'
    
    total_minutes, total_entries, minute_values, total_hours, remaining_minutes, build_range_start, build_range_end, build_range_count = process_input_file(file_path)
    
    # Print the result with improved formatting
    print(Fore.CYAN + "="*60)
    print(Fore.YELLOW + f"{'Summary Report':^60}")
    print(Fore.CYAN + "="*60)
    
    # Calculate build range and display it
    print(Fore.GREEN + f"Build Range:               Build #{build_range_start} to Build #{build_range_end} : {build_range_end - build_range_start + 1} entries")
    print(Fore.CYAN + "-" * 60)
    print(Fore.MAGENTA + f"Minute Values Extracted:   ", ' +'.join(map(str, minute_values)))
    print(Fore.CYAN + "-" * 60)
    print(Fore.RED + f"Total Sum of Minutes:      {total_minutes} minutes")
    print(Fore.RED + f"Total Time:                {total_hours} hours {remaining_minutes} minutes")
    print(Fore.CYAN + "="*60)

if __name__ == "__main__":
    main()
