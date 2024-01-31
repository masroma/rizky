<x-app-layout>
    <x-slot name="header">
        <div class="row">
            <div class="col-12 col-md-6 order-md-1 order-last">
                <h3>User</h3>
                <p class="text-subtitle text-muted">Data pengguna aplikasi</p>
            </div>
            <div class="col-12 col-md-6 order-md-2 order-first">
                <nav aria-label="breadcrumb" class="breadcrumb-header float-start float-lg-end">
                    <ol class="breadcrumb">
                        <li class="breadcrumb-item active" aria-current="page">user</li>
                    </ol>
                </nav>
            </div>
        </div>
    </x-slot>


    <section class="section">
        <div class="card">
            <div class="card-header d-flex justify-content-between">
                <h4 class="card-title">Data User</h4>
                <div class="d-flex">
                    <!-- Formulir Pencarian -->
                    <form action="{{ route('user.index') }}" method="GET" class="me-2">
                        <div class="input-group">
                            <input type="text" class="form-control sm" placeholder="Cari user..." name="search" value="{{ request('search') }}">
                            <button type="submit" class="btn btn-outline-secondary btn-sm">Cari</button>
                        </div>
                    </form>

                    @if(auth()->user()->role == 'admin')
                    <a href="{{ route('user.create') }}" class="btn btn-danger btn-sm">Tambah</a>
                @endif
                </div>
            </div>


            <div class="card-body">
                @if (session('success'))
                    <div id="successAlert" class="alert alert-success alert-dismissible fade show" role="alert">
                        {{ session('success') }}
                        <button type="button" class="btn-close" data-bs-dismiss="alert" aria-label="Close"></button>
                    </div>
                    <script>
                        // Script untuk menghilangkan alert secara otomatis setelah beberapa detik
                        setTimeout(function() {
                            document.getElementById('successAlert').remove();
                        }, 5000); // 5000 milidetik = 5 detik
                    </script>
                @endif
                <div class="table-responsive">
                    <table class="table table-bordered table-striped mt-3">
                        <thead>
                            <tr>
                                <th>ID</th>
                                <th>Nama</th>
                                <th>Email</th>
                                <th>Role</th>
                                <th>No Hp</th>
                                <th>Status</th>
                                <th>#</th>
                            </tr>
                        </thead>
                        <tbody>
                            @foreach ($users as $user)
                                <tr>
                                    <td>{{ $user->id }}</td>
                                    <td>{{ $user->name }}</td>
                                    <td>{{ $user->email }}</td>
                                    <td>{{ $user->role }}</td>
                                    <td>{{ $user->phone_number }}</td>
                                    <td>{{ $user->status }}</td>

                                    <td>
                                        @if(auth()->user()->role == 'admin')
                                        <a href="{{ route('user.edit', ['user' => $user->id]) }}"
                                            class="btn btn-warning btn-sm">Edit</a>

                                        <!-- Tombol untuk memunculkan modal konfirmasi delete -->
                                        <button type="button" class="btn btn-danger btn-sm" data-bs-toggle="modal"
                                            data-bs-target="#deleteModal{{ $user->id }}">
                                            Delete
                                        </button>

                                        <!-- Modal konfirmasi delete -->
                                        <div class="modal fade" id="deleteModal{{ $user->id }}" tabindex="-1"
                                            aria-labelledby="deleteModalLabel" aria-hidden="true">
                                            <div class="modal-dialog">
                                                <div class="modal-content">
                                                    <div class="modal-header">
                                                        <h5 class="modal-title" id="deleteModalLabel">Konfirmasi Delete
                                                        </h5>
                                                        <button type="button" class="btn-close" data-bs-dismiss="modal"
                                                            aria-label="Close"></button>
                                                    </div>
                                                    <div class="modal-body">
                                                        Apakah Anda yakin ingin menghapus pengguna
                                                        "{{ $user->name }}"?
                                                    </div>
                                                    <div class="modal-footer">
                                                        <button type="button" class="btn btn-secondary"
                                                            data-bs-dismiss="modal">Batal</button>
                                                        <!-- Form untuk menghapus pengguna -->
                                                        <form
                                                            action="{{ route('user.destroy', ['user' => $user->id]) }}"
                                                            method="POST" class="d-inline">
                                                            @csrf
                                                            @method('DELETE')
                                                            <button type="submit"
                                                                class="btn btn-danger">Delete</button>
                                                        </form>
                                                    </div>
                                                </div>
                                            </div>
                                        </div>

                                        @endif
                                    </td>
                                </tr>
                            @endforeach
                        </tbody>
                    </table>

                    {{ $users->links() }}
                </div>
            </div>
        </div>
    </section>


    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0/dist/js/bootstrap.bundle.min.js"></script>
    <script>
        document.addEventListener("DOMContentLoaded", function() {
            // Initialize DataTable
            $('#searchInput').on('keyup', function() {
                const searchText = $(this).val().toLowerCase();
                $('table tbody tr').filter(function() {
                    $(this).toggle($(this).text().toLowerCase().indexOf(searchText) > -1)
                });
            });
        });
    </script>
</x-app-layout>
