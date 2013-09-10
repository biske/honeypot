$(function() {
	$("#task_when").datetimepicker({
		dateFormat: 'dd-mm-yy',
		timeFormat: 'HH:mm z', 
		showTimezone: false 		
  });
  
  $("#task_days").spinner({ min: 0 });
  $("#task_hours").spinner({ min: 0, max: 24 });
  $("#task_minutes").spinner({ min: 0, max: 60 });
});