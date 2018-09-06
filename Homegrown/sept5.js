// Write a function that takes an array A of length n and returns a boolean value to
// indicate whether it is sorted in ascending order or not.

// Write a function that takes in a HTML document and returns an array of all anchor
// tags in the document.

unsortedArray = [1, 4, 6, 3, 8, 9];
sortedArray = [1, 3, 4, 6, 8, 9];
sortedSameValue = [1, 1, 1, 1, 1];

assertTrue(isSortedRec(sortedArray));
assertTrue(isSortedRec(sortedSameValue));
assertFalse(isSortedRec(unsortedArray));


function isSortedRec(array) {
    if (array.length === 0 || array.length === 1) {
        return true;
    }
    if (array[1] < array[0]){
        return false;
    }

    return isSortedRec(array.slice(1, array.length));
};


function isSorted(array) {
    var sorted = true;

    for (let index = 0; index < array.length - 1; index++) {
        if (array[index] > array[index + 1]) {
            sorted = false;
            break;
        }
    }

    return sorted;
}


function assertTrue(candidate) {
    if (candidate !== true) {
        console.log(candidate + " is not true");
        return;
    }
    console.log(candidate + " is true");
}

function assertTruthy(candidate) {
    if (candidate != true) {
        console.log(candidate + " is not truthy");
        return;
    }
    console.log(candidate + " is truthy");
}

function assertFalsey(candidate) {
    if (candidate != false) {
        console.log(candidate + " is not falsey");
        return;
    }
    console.log(candidate + " is falsey");
}

function assertFalse(candidate) {
    if (candidate !== false) {
        console.log(candidate + " is not false");
        return;
    }
    console.log(candidate + " is false");
}









