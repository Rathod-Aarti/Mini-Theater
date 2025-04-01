function showCustomers(){
    var request = new XMLHttpRequest();
    request.open('POST', './adminView/viewCustomers.php', true);
    request.send();

    request.onreadystatechange = function() {
        if (this.readyState == 4 && this.status == 200) {
            $('.allContent-section').html(this.responseText);
        }
    }
}
function showCategory(){
    var request = new XMLHttpRequest();
    request.open('POST', './adminView/viewCategories.php', true);
    request.send();

    request.onreadystatechange = function() {
        if (this.readyState == 4 && this.status == 200) {
            $('.allContent-section').html(this.responseText);
        }
    }
}
function categoryDelete(id){
    var request = new XMLHttpRequest();
    request.open('POST', './controller/catDeleteController.php', true);
    request.send(JSON.stringify({record:id}));

    request.onreadystatechange = function() {
        if (this.readyState == 4 && this.status == 200) {
            alert('Category Successfully deleted');
            $('form').trigger('reset');
            showCategory();
        }
    }
}
function showMovie(){  
    $.ajax({
        url:"./adminView/viewAllMovies.php",
        method:"post",
        data:{record:1},
        success:function(data){
            $('.allContent-section').html(data);
        }
    });
}

function movieEditForm(id){
    $.ajax({
        url:"./adminView/editMovieForm.php",
        method:"post",
        data:{record:id},
        success:function(data){
            $('.allContent-section').html(data);
        }
    });
}
//delete Movie data
function deleteMovie(id){  
    if(confirm("Are you sure you want to delete this movie?")) {
        $.ajax({
            url:"./controller/deleteMovieController.php",
            method:"post",
            data:{record:id},
            success:function(data){
                alert('Movie Successfully deleted.........!');
                $('form').trigger('reset');
                showMovieItems();
            }
        });
    }
}
function showTvShow(){  
    $.ajax({
        url:"./adminView/viewAllTvShow.php",
        method:"post",
        data:{record:1},
        success:function(data){
            $('.allContent-section').html(data);
        }
    });
}

function tvshowEditForm(id){
    $.ajax({
        url:"./adminView/editTvShowForm.php",
        method:"post",
        data:{record:id},
        success:function(data){
            $('.allContent-section').html(data);
        }
    });
}
//delete Movie data
function deleteTvShow(id){  
    if(confirm("Are you sure you want to delete this movie?")) {
        $.ajax({
            url:"./controller/deleteTvShowController.php",
            method:"post",
            data:{record:id},
            success:function(data){
                alert('Movie Successfully deleted.........!');
                $('form').trigger('reset');
                showMovieItems();
            }
        });
    }
}
function showKids(){  
    $.ajax({
        url:"./adminView/viewAllKids.php",
        method:"post",
        data:{record:1},
        success:function(data){
            $('.allContent-section').html(data);
        }
    });
}

function kidsEditForm(id){
    $.ajax({
        url:"./adminView/editKidsForm.php",
        method:"post",
        data:{record:id},
        success:function(data){
            $('.allContent-section').html(data);
        }
    });
}
//delete Movie data
function deleteTvShow(id){  
    if(confirm("Are you sure you want to delete this movie?")) {
        $.ajax({
            url:"./controller/deleteKidController.php",
            method:"post",
            data:{record:id},
            success:function(data){
                alert('Movie Successfully deleted.........!');
                $('form').trigger('reset');
                showMovieItems();
            }
        });
    }
}


