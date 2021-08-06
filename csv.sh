
echo "Composing a Big CSV"
echo ""
 
# Himanshi Kundu,kunduhimanshi@gmail.com,@Himanshi,Drug Development,@itsmanshi,3
mkdir output
 
# Defining the csv header
echo "name, email, slack_id, biostack, twitter, hamming_distance" > output/csv.csv
 
# Fetch executables c++ scripts
cpp_set=$(find -iname "*.cpp")
 
# Fetch executables java scripts
java_set=$(find -iname "*.java")
 
# Fetch executables perl scripts
perl_set=$(find -iname "*.pl")
 
# Fetch executables jupyter scripts
jupyter_set=$(find -iname "*.ipynb")
 
# Fetch executables python scripts
python_set=$(find . -iname "*[^__].py")
 
# Fetch executables R scripts
r_set=$(find . -iname "*.R")
 
# Fetch executables php scripts
php_set=$(find . -iname "*.php")

# Fetch executables js scripts
js_set=$(find . -iname "*.js")

# Compose the whole set of scripts to be running
script_container="$cpp_set \n $java_set \n $perl_set \n $octave_set \n $python_set \n $r_set \n $ruby_set \n $js_set"
script_container=$(echo $script_container | tr "\n" "\n") # trim
 
# echo "$script_container"
 
for script in $script_container
do
    # switch case
    case $script in
 
        *".cpp")
            echo -n "We are running an C++ code"
            g++ $script -o compiled_object
            ./compiled_object >> output/csv.csv
            echo "" >> output/csv.csv
            echo ""
            ;;
 
        *".java")
            echo -n "We are running an Java code"
            javac $script
            # mv main/Hamming.class Hamming.class
            # Running the external class to the main
            java Hamming >> output/csv.csv
            echo ""
            ;;
 
        *".m")
            echo -n "We are running an Octave code"
            octave $script >> output/csv.csv
            echo "" >> output/csv.csv
            echo ""
            ;;
 
        *".pl")
            echo -n "We are running an Perl code"
            perl $script >> output/csv.csv
            echo "" >> output/csv.csv
            echo ""
            ;;
 
        *".py")
            echo -n "We are running an Python code"
            python3 $script >> output/csv.csv
            echo ""
            ;;
 
        *".R")
            echo -n "We are running an R code"
            Rscript $script >> output/csv.csv
            echo "" >> output/csv.csv
            echo ""
            ;;
 
        *".rb")
            echo -n "We are running an php code"
            php $script >> output/csv.csv
            echo "" 
            ;;

        *".js")
            echo -n "We are running an js code"
            node $script >> output/csv.csv
            echo ""
            ;;
 
        *)
            # Default case
            echo ""
            ;;
    esac
done
 
echo "Removing temporary objects"
rm *.class compiled_object
echo ""
 
echo "End of the bash execution :)"
echo ""