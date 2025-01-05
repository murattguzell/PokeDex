
# PokeDex

This project is a Pokémon-themed mobile application that allows users to discover different Pokémon. The app provides detailed information about each Pokémon, including data such as species and characteristics. Users can view images and information about the Pokémon and access visual details, including each Pokémon's unique number and species.


## Özellikler

- Pokémon Listing: The app allows users to list many Pokémon with their images and names.
- Pokémon Detail Page: Provides a detailed page for each Pokémon, including the Pokémon's species, number, name, picture, and other information.
- Color View by Type: Depending on the type of Pokémon, different colors are used in the background of the screen to provide visual variety.
Pokémon Information and Characteristics: Pokémon's name, type, number and special information are displayed in detail to the user.
- Responsive Design: The app offers a user-friendly experience in both portrait and landscape screen modes.
- Animated Transitions: Animations provide a visual flow when switching between Pokémon details.
- Comprehensive Visuals: Each Pokémon's image is displayed in high quality and animated.
- Background Theme: Changing background colors according to the type of Pokémon visually enriches the user experience.
- User Friendly Interface: A simple and intuitive interface makes it easy for users to discover Pokémon.
## Technologies Used

Flutter

Purpose: A cross-platform framework for mobile app development. It is used to create applications that work on both Android and iOS platforms.
Dart

Purpose: The programming language used for Flutter app development. It is the core language for Flutter applications, known for its modern features and capabilities.
flutter_screenutil

Purpose: Provides dynamic sizing based on screen dimensions. It ensures that the app appears consistent across different device sizes.
CachedNetworkImage

Purpose: Caches images from the internet, improving loading speed and reducing network traffic.
Hero Animation

Purpose: Provides animated transitions between pages. It enhances user experience by making navigation more dynamic and engaging.
Material Design

Purpose: A design system by Google that offers UI components based on modern design principles. It ensures that the app has a modern, user-friendly interface.
Widgets

Purpose: Building blocks for the UI in Flutter. Every part of the user interface is a widget.
StatelessWidget

Purpose: A widget that does not depend on any mutable state. It is used for UI elements that do not change.
SafeArea

Purpose: Ensures that the content is displayed within the safe area of the screen, avoiding areas like notches or screen edges.
Navigator

Purpose: Manages page navigation within the app. It enables navigation between different pages based on user interactions.
Chip

Purpose: Displays small pieces of information or tags. Typically used for list items or filters.
const Constructors

Purpose: Used to create immutable widgets, which leads to performance optimization by reducing memory usage and speeding up the build process.
Expanded and Flex

Purpose: Distributes space in a flexible manner. They are particularly useful in creating responsive layouts.
UIHelper (Custom Helper Class)

Purpose: Centralizes utility functions used across the app, such as calculating screen sizes, defining colors, and handling padding.
Constants

Purpose: Stores constant values used throughout the application. It helps manage colors, styles, and other fixed values centrally.
BLoC Pattern

Purpose: A design pattern that separates business logic from the UI. Cubit or Bloc is used for state management, and the UI focuses only on rendering the view.
Components used with BLoC:
Cubit: A class that manages state changes, used for simple data updates.
Bloc: Used for more complex data management and business logic.
Stream: Used to listen to changes in data and rebuild the UI upon data changes.
Event and State: BLoC listens for Event objects and returns corresponding State objects, which are then used to update the UI.
Repository

Purpose: Provides a central layer for accessing application data. It manages the data fetched from APIs, databases, or other sources, and works seamlessly with the BLoC pattern. It encapsulates the data access methods, ensuring that the UI layer interacts with this class to retrieve the data. This promotes separation of concerns and improves testability.
Components used with Repository:
Data Fetching: API or database queries are managed through the Repository.
Data Caching: Caches data to reduce network traffic and improve data access speed.

  
## Ekran Görüntüleri

![Uygulama Ekran Görüntüsü](https://github.com/murattguzell/PokeDex/blob/master/assets/pokemon.gif?raw=true)

  
