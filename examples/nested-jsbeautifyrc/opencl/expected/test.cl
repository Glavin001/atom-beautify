__kernel void reduce_min(__global const int* A, __global int* B, __local int* scratch) {
        //Get local variable data
        int id = get_global_id(0);
        int lid = get_local_id(0);
        int N = get_local_size(0);

        //Store valus of global memory into local memory
        scratch[lid] = A[id];

        //Wait for copying to complete
        barrier(CLK_LOCAL_MEM_FENCE);

        for (int i = 1; i < N; i *= 2) {
                if (!(lid % (i * 2)) && ((lid + i) < N)) {
                        if (scratch[lid] > scratch[lid + i])
                                scratch[lid] = scratch[lid+i];
                }

                barrier(CLK_LOCAL_MEM_FENCE);
        }

        //Store cache in output array
        if (!lid)
                atomic_min(&B[0], scratch[lid]);
}


__kernel void reduce_max(__global const int* A, __global int* B, __local int* scratch) {
        //Get local variable data
        int id = get_global_id(0);
        int lid = get_local_id(0);
        int N = get_local_size(0);

        //Store valus of global memory into local memory
        scratch[lid] = A[id];

        //Wait for copying to complete
        barrier(CLK_LOCAL_MEM_FENCE);

        for (int i = 1; i < N; i *= 2) {
                if (!(lid % (i * 2)) && ((lid + i) < N)) {
                        if (scratch[lid] < scratch[lid + i])
                                scratch[lid] = scratch[lid+i];
                }

                barrier(CLK_LOCAL_MEM_FENCE);
        }

        //Store cache in output array
        if (!lid)
                atomic_max(&B[0], scratch[lid]);
}

__kernel void reduce_avg(__global const int* A, __global int* B, __local int* scratch) {
        //Get local variable data
        int id = get_global_id(0);
        int lid = get_local_id(0);
        int N = get_local_size(0);

        //Store valus of global memory into local memory
        scratch[lid] = A[id];

        //Wait for copying to complete
        barrier(CLK_LOCAL_MEM_FENCE);

        for (int i = 1; i < N; i *= 2) {
                if (!(lid % (i * 2)) && ((lid + i) < N))
                {
                        scratch[lid] += scratch[lid+i];
                }
                barrier(CLK_LOCAL_MEM_FENCE);
        }

        //Store cache in output array
        if (!lid)
                atomic_add(&B[0],scratch[lid]);
}
