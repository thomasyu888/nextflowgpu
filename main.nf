
process RUN_MY_GPU_TOOL {
    label 'process_gpu' // Optional: for grouping GPU processes
    container 'nvidia/cuda:13.1.0-base-ubuntu24.04' // Use a CUDA-enabled container
    accelerator 1 // Requests 1 GPU

    output:
    path 'output.file'

    script:
    """
    # Your GPU-accelerated command here (e.g., a CUDA application)
    # The 'nvidia-smi' command can be used to verify GPU access
    nvidia-smi
    ./my_tool > output.file
    """
}

workflow {
    RUN_MY_GPU_TOOL()
}
