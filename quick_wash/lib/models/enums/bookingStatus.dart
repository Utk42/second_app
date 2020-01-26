// TODO : Do we need State Machine for this ?
// TODO : What are possible State-transitions in the flows ?

enum BookingStatus {
  NEW,     // by customer
  CANCELLED,  // by customer
  PENDING,    // by us, managing the correct time-slot & assigning workers
  CONFIRMED,  // by us
  DECLINED,   // by us
  REQUESTED,  // by us, for other slot : Need Confirmation from User
  SERVED,     // by us
}