

// عرض ملف الموظف 
function profile(button, row) {
   
    window.location.href = "/employee/profile/" + row.id;

 
  }
function emp_att(button, row) {
   
    window.location.href = "/duration/emp_att_calendar/" + row.id;

 
  }

  function assignPosition (button, row){

    window.location.href = "/employee/assigne_position/" + row.employeeNo;
  }

  function changeEmployeeStatusFun(button, row, emp_status) {
console.log(emp_status);
    const changeEmployeeStatus = new bootstrap.Modal(
      document.getElementById("changeEmployeeStatus" + row.id)
    );
    post(
      `/employee/change_status`,
      {
        id: row.id,
        emp_status: emp_status
      },
      button,
      changeEmployeeStatus
    ).then((response) => {
      if (response.ok) {
        response
        .json();
        console.log(response);

       //   .then((response) => openGetUserModal(showGetUserModal, response));
      }
    });


  }
