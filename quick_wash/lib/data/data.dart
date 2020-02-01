import '../models/car.dart';
import '../models/booking.dart';
import '../models/enums/bookingSlot.dart';
import '../models/enums/bookingStatus.dart';
import '../models/dtos/address.dart';

List<String> images = [
  'assets/images/waterWash.png',
  'assets/images/foamWash.jpeg',
  'assets/images/polish.jpeg',
  'assets/images/waterWash.png',
  'assets/images/foamWash.jpeg',
  'assets/images/polish.jpeg',
];

List<String> title = [
  "Water Wash",
  "Foam Wash",
  "Polish Wash",
  "Water Wash",
  "Foam Wash",
  "Polish Wash",
];

List<String> actualPrice = [
  "200",
  "450",
  "700",
  "200",
  "450",
  "700",
];

List<String> discountedPrice = [
  "150",
  "350",
  "600",
  "150",
  "350",
  "600",
];

List<Car> yourCars = [
  // Car(id: '1', brand: 'Suzuki',model: 'Ritz', fuelType: 'petrol',),
  // Car(id: '2', brand: 'Suzuki',model: 'Swift', fuelType: 'petrol',),
  // Car(id: '3', brand: 'Hyundai',model: 'i10', fuelType: 'petrol',),
  // Car(id: '4', brand: 'Hyundai',model: 'i20', fuelType: 'CNG',),
  // Car(id: '5', brand: 'Honda',model: 'City', fuelType: 'petrol',),
  // Car(id: '6', brand: 'Suzuki',model: 'SX4', fuelType: 'Diesel',),
];


List<Booking> myBookings = [
  // Booking(id : '1', userId: '1', carId: '1', slot: BookingSlot.MORNING, bookingTime: DateTime.now().subtract(Duration(days: 16)), serviceDate : DateTime.now().subtract(Duration(days: 15)), status : BookingStatus.SERVED, address: Address(houseNumber: 'Flat No. 145', societyName: 'Vrindavan Gardens Apartments', streetName: 'St. Churtch Street', area: 'Gokhalshala', locality: 'Near Rajul Dairy', pincode: '657890', city: 'Jabalpur', state: 'M.P.' ),),
  // Booking(id : '2', userId: '1', carId: '1', slot: BookingSlot.MORNING, bookingTime: DateTime.now().subtract(Duration(days: 12)), serviceDate : DateTime.now().subtract(Duration(days: 10)), status : BookingStatus.SERVED, address: Address(houseNumber: 'Flat No. 145', societyName: 'Vrindavan Gardens Apartments', streetName: 'St. Churtch Street', area: 'Gokhalshala', locality: 'Near Rajul Dairy', pincode: '657890', city: 'Jabalpur', state: 'M.P.' ),),
  // Booking(id : '3', userId: '1', carId: '1', slot: BookingSlot.MORNING, bookingTime: DateTime.now().subtract(Duration(days: 2)), serviceDate : DateTime.now(), status : BookingStatus.NEW, address: Address(houseNumber: 'Flat No. 145', societyName: 'Vrindavan Gardens Apartments', streetName: 'St. Churtch Street', area: 'Gokhalshala', locality: 'Near Rajul Dairy', pincode: '657890', city: 'Jabalpur', state: 'M.P.' ),),
];