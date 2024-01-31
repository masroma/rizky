<?php

namespace App\Http\Controllers;

use App\Models\User;
use Illuminate\Http\Request;

class UserController extends Controller
{
    public function index(Request $request)
    {
        $search = $request->query('search');

        $users = User::when($search, function ($query) use ($search) {
            $query->where('name', 'like', '%' . $search . '%')
                ->orWhere('email', 'like', '%' . $search . '%');
            // Tambahkan kolom-kolom lain yang ingin dijadikan sebagai kriteria pencarian
        })->paginate(10);

        return view('users.index', compact('users'));
    }

    public function create()
    {
        return view('users.create');
    }

    public function store(Request $request)
    {
        $request->validate([
            'name' => 'required',
            'email' => 'required|email|unique:users',
            'password' => 'required|min:6',
            'role' => 'required|in:admin,user', // Validasi untuk kolom 'role'
            'phone_number' => 'nullable|numeric', // Validasi untuk kolom 'phone_number'
            'status' => 'required|in:karyawan,mengundurkan_diri', // Validasi untuk kolom 'status'
        ]);

        // Menambahkan data ke database
        User::create([
            'name' => $request->name,
            'email' => $request->email,
            'password' => bcrypt($request->password),
            'role' => $request->role,
            'phone_number' => $request->phone_number,
            'status' => $request->status,
        ]);

        return redirect()->route('user.index')->with('success', 'User has been successfully added.');
    }

    public function edit(User $user)
    {
        return view('users.edit', compact('user'));
    }

    public function update(Request $request, User $user)
    {
        $request->validate([
            'name' => 'required',
            'email' => 'required|email|unique:users,email,' . $user->id,
            'password' => 'nullable|min:6',
            'role' => 'required|in:admin,user', // Validasi untuk kolom 'role'
            'phone_number' => 'nullable|numeric', // Validasi untuk kolom 'phone_number'
            'status' => 'required|in:karyawan,mengundurkan_diri', // Validasi untuk kolom 'status'
        ]);

        // Jika password tidak diisi, hilangkan field password dari data request
        $data = $request->except(['password']);

        // Jika password diisi, tambahkan field password ke data request
        if ($request->filled('password')) {
            $data['password'] = bcrypt($request->password);
        }

        // Memperbarui data user
        $user->update($data);

        return redirect()->route('user.index')
            ->with('success', 'User updated successfully');
    }



    public function destroy(User $user)
    {
        $user->delete();

        return redirect()->route('user.index')
            ->with('success', 'User deleted successfully');
    }
}
