$(function() {
  $("#point_of_view_days").spinner({ min: 0 });
  $("#point_of_view_hours").spinner({ min: 0, max: 24 });
  $("#point_of_view_minutes").spinner({ min: 0, max: 60 });
});