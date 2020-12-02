mcd () {
    mkdir -p "$1"
    cd "$1"
}

sap () {
    echo "$1" >> "$2"
    sort -u "$2" > temp
    mv temp "$2"
}

rsu () {
    git remote add origin git@github.com:hwikle/$1
    git branch -M main
    git push -u origin main
}
