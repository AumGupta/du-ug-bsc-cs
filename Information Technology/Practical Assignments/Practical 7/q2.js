var a = [3, 4, 1, 5, 7, 8, 2];
console.log("Unsorted Array: "+a);
for (let i = 1; i < a.length; i++) {
    let tmp = a[i];
    let j = i - 1;
    while (j >= 0 && a[j] > tmp) {
        a[j + 1] = a[j];
        j--;
    }
    a[j + 1] = tmp;
}
console.log("Sorted Array: "+a);