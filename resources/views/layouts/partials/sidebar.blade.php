<x-maz-sidebar :href="route('dashboard')" :logo="asset('images/logo/logo.jpg')">

    <!-- Add Sidebar Menu Items Here -->

    <x-maz-sidebar-item name="Dashboard" :link="route('dashboard')" icon="bi bi-grid-fill"></x-maz-sidebar-item>
    <x-maz-sidebar-item name="User" :link="route('user.index')" icon="bi bi-person-fill"></x-maz-sidebar-item>


</x-maz-sidebar>
