function submitCSV()
          { 
            confirm("This function returns only complete orders within the selected date range.");
            var startDate = $('#search_created_at_greater_than').val();
            var endDate = $('#search_created_at_less_than').val();
            if(endDate.length == 0 || startDate.length == 0){
                alert("Please select a date range for the csv export.");
                return false;
            }
            window.location = "/admin/shippingdocs" + "?start=" + startDate + "&end=" + endDate
          }
