# Flutter Shopping App

A mobile shopping application built using Flutter and Android Studio. This app provides users with a seamless shopping experience, encompassing features such as browsing products, managing their profile, viewing purchase history, and more.

## Features

This application includes the following key features:

* **Splash Screen:** An initial screen displayed upon app launch, providing a smooth transition to the main app.
* **Authentication:**
    * **Login Page:** Allows existing users to securely access their accounts.
    * **Registration Page:** Enables new users to create accounts.
* **Home Page:** The central hub showcasing a curated selection of products, special offers, and product categories. Includes search functionality and easy navigation.
* **Profile Page:** Users can view and manage their personal information, including name, address, contact details, and potentially payment methods. Options for password changes and account settings are also available.
* **Purchases Page:** Displays a detailed history of user orders, including order dates, IDs, purchased items, and total amounts. Users can track order statuses and potentially initiate returns.
* **Products Page:** A comprehensive listing of available products, complete with images, names, prices, ratings, and other relevant details. Users can easily browse and select products of interest.
* **Product Details Page:** Upon selecting a product, users are directed to a dedicated page providing in-depth information, including descriptions, specifications, customer reviews, and related products.
* **Shopping Cart:** Allows users to review selected items, adjust quantities, remove items, and proceed to the checkout process.
* **Settings Page:** Provides options for users to customize their app experience, such as managing notifications, language preferences, and potentially delivery addresses.

## Tech Stack

* **Flutter:** A UI toolkit for building natively compiled applications for mobile, web, and desktop from a single codebase.
* **Android Studio:** The official IDE for Android development, used for building and debugging the Flutter application. (While Flutter is cross-platform, Android Studio is a common IDE used for Flutter development, especially when targeting Android).
* **(Potentially) Backend Services:** Depending on the complexity, this app might integrate with a backend service for managing product data, user accounts, and order processing. This could involve technologies like:
    * **Firebase:** For authentication, database (Firestore), and storage.
    * **Node.js with Express:** For building a custom API.
    * **Django or Flask (Python):** Another option for backend API development.
    * **Other RESTful APIs.**
* **(Potentially) State Management:** For managing the application's state efficiently (e.g., Provider, BLoC/Cubit, Riverpod).
* **(Potentially) Other Dependencies:** Libraries for tasks such as image caching, network requests, and UI enhancements.

## Getting Started

To run this application on your local machine, follow these steps:

1.  **Prerequisites:**
    * Install Flutter SDK according to the official Flutter documentation: [https://flutter.dev/docs/get-started/install](https://flutter.dev/docs/get-started/install)
    * Install Android Studio: [https://developer.android.com/studio](https://developer.android.com/studio)
    * Set up an Android emulator or connect a physical Android device.
2.  **Clone the repository:**
    ```bash
    git clone <repository_url>
    ```
3.  **Navigate to the project directory:**
    ```bash
    cd <project_directory>
    ```
4.  **Get dependencies:**
    ```bash
    flutter pub get
    ```
5.  **Run the application:**
    ```bash
    flutter run
    ```

## Project Structure

*(You can elaborate on the project's directory structure here, if you wish. For example:)*

HOME PAGE
![Screenshot 2025-04-24 144650](https://github.com/user-attachments/assets/0ab57996-085d-471b-8a37-8026dcf7375d)
![Screenshot 2025-04-24 144712](https://github.com/user-attachments/assets/e6236c78-8b69-4632-b974-59bad9158655)
![Screenshot 2025-04-24 144748](https://github.com/user-attachments/assets/b56b2921-dc66-4ca0-b102-03132f76d6cd)
![Screenshot 2025-04-24 144815](https://github.com/user-attachments/assets/aa9f650e-5b7d-44da-9345-31eba49b0d3a)
![Screenshot 2025-04-24 144839](https://github.com/user-attachments/assets/89fd287b-4efd-42f0-acb2-36c7fef1ec1c)
![Screenshot 2025-04-24 145620](https://github.com/user-attachments/assets/b690edb4-ad92-4c1c-8e23-f3177bed0e1e)
![Screenshot 2025-04-24 145648](https://github.com/user-attachments/assets/8096002e-842f-4cf7-af76-65509b19881f)
![Screenshot 2025-04-24 145715](https://github.com/user-attachments/assets/22a3504f-15bd-45c5-a1d1-9e4c6d2b0e02)
![Screenshot 2025-04-24 145733](https://github.com/user-attachments/assets/1394ee82-3279-436e-8dab-fc97552f953b)
