"""C++ wrapper for data library."""
from libcpp.string cimport string as std_string
from libcpp.map cimport map
from libcpp.set cimport set
from libcpp.utility cimport pair

cimport extra_types

cdef extern from "data.h" namespace "pyne":
    # Mathematical constants
    double pi
    double N_A
    double barns_per_cm2
    double cm2_per_barn
    double sec_per_day

    # hash map and initialization function
    map[std_string, std_string] data_checksums
    
    # atomic_mass functions
    map[int, double] atomic_mass_map
    double atomic_mass(int) except +
    double atomic_mass(char *) except +
    double atomic_mass(std_string) except +

    # natural_abund functions
    map[int, double] natural_abund_map
    double natural_abund(int) except +
    double natural_abund(char *) except +
    double natural_abund(std_string) except +

    # Scattering length functions
    map[int, extra_types.complex_t] b_coherent_map
    extra_types.complex_t b_coherent(int) except +
    extra_types.complex_t b_coherent(char *) except +
    extra_types.complex_t b_coherent(std_string) except +

    map[int, extra_types.complex_t] b_incoherent_map
    extra_types.complex_t b_incoherent(int) except +
    extra_types.complex_t b_incoherent(char *) except +
    extra_types.complex_t b_incoherent(std_string) except +

    map[int, double] b_map
    double b(int) except +
    double b(char *) except +
    double b(std_string) except +

    # fission product data
    map[pair[int, int], double] wimsdfpy_data
    double fpyield(pair[int, int]) except +
    double fpyield(int, int) except +
    double fpyield(char *, char *) except +
    double fpyield(std_string, std_string) except +

    # decay data functions
    map[int, double] half_life_map
    double half_life(int) except +
    double half_life(char *) except +
    double half_life(std_string) except +

    map[int, double] decay_const_map
    double decay_const(int) except +
    double decay_const(char *) except +
    double decay_const(std_string) except +

    map[pair[int, int], double] branch_ratio_map
    double branch_ratio(pair[int, int]) except +
    double branch_ratio(int, int) except +
    double branch_ratio(char *, char *) except +
    double branch_ratio(std_string, std_string) except +

    map[int, double] state_energy_map
    double state_energy(int) except +
    double state_energy(char *) except +
    double state_energy(std_string) except +

    map[int, set[int]] decay_children_map
    set[int] decay_children(int) except +
    set[int] decay_children(char *) except +
    set[int] decay_children(std_string) except +

