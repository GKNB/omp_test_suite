; ModuleID = '/tmp/test_openmp-eb4e09.bc'
source_filename = "test_openmp.C"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%"class.std::ios_base::Init" = type { i8 }
%"class.std::basic_ostream" = type { ptr, %"class.std::basic_ios" }
%"class.std::basic_ios" = type { %"class.std::ios_base", ptr, i8, i8, ptr, ptr, ptr, ptr }
%"class.std::ios_base" = type { ptr, i64, i64, i32, i32, i32, ptr, %"struct.std::ios_base::_Words", [8 x %"struct.std::ios_base::_Words"], i32, ptr, %"class.std::locale" }
%"struct.std::ios_base::_Words" = type { ptr, i64 }
%"class.std::locale" = type { ptr }
%struct.ident_t = type { i32, i32, i32, i32, ptr }
%struct.__tgt_offload_entry = type { ptr, ptr, i64, i32, i32 }
%"class.std::type_info" = type { ptr, ptr }

$_ZNKSt9type_info4nameEv = comdat any

@_ZStL8__ioinit = internal global %"class.std::ios_base::Init" zeroinitializer, align 1
@__dso_handle = external hidden global i8
@_ZSt4cout = external global %"class.std::basic_ostream", align 8
@.str = private unnamed_addr constant [36 x i8] c"We are testing atomicAdd with type \00", align 1
@_ZTIi = external constant ptr
@.str.1 = private unnamed_addr constant [26 x i8] c"Time for serial with N = \00", align 1
@.str.2 = private unnamed_addr constant [12 x i8] c" and len = \00", align 1
@.str.3 = private unnamed_addr constant [5 x i8] c" is \00", align 1
@0 = private unnamed_addr constant [23 x i8] c";unknown;unknown;0;0;;\00", align 1
@1 = private unnamed_addr constant %struct.ident_t { i32 0, i32 514, i32 0, i32 22, ptr @0 }, align 8
@2 = private unnamed_addr constant %struct.ident_t { i32 0, i32 2, i32 0, i32 22, ptr @0 }, align 8
@.str.4 = private unnamed_addr constant [43 x i8] c"Error! res_h and res are different at i = \00", align 1
@.str.5 = private unnamed_addr constant [18 x i8] c" with res_h[i] = \00", align 1
@.str.6 = private unnamed_addr constant [15 x i8] c" and res[i] = \00", align 1
@.str.7 = private unnamed_addr constant [61 x i8] c"0 && \22Error! Atomic update for Openmp CPU without rf fail\\n\22\00", align 1
@.str.8 = private unnamed_addr constant [14 x i8] c"test_openmp.C\00", align 1
@__PRETTY_FUNCTION__.main = private unnamed_addr constant [11 x i8] c"int main()\00", align 1
@.str.9 = private unnamed_addr constant [48 x i8] c"Time for CPU openmp atomic without rf with N = \00", align 1
@.str.11 = private unnamed_addr constant [46 x i8] c"Error! res_h_rf and res are different at i = \00", align 1
@.str.12 = private unnamed_addr constant [24 x i8] c" with res_h_rf[i*rf] = \00", align 1
@.str.13 = private unnamed_addr constant [58 x i8] c"0 && \22Error! Atomic update for Openmp CPU with rf fail\\n\22\00", align 1
@.str.14 = private unnamed_addr constant [45 x i8] c"Time for CPU openmp atomic with rf with N = \00", align 1
@.offload_sizes = private unnamed_addr constant [1 x i64] [i64 524288]
@.offload_maptypes = private unnamed_addr constant [1 x i64] [i64 1]
@.offload_sizes.15 = private unnamed_addr constant [1 x i64] [i64 134217728]
@.offload_maptypes.16 = private unnamed_addr constant [1 x i64] [i64 1]
@.offload_sizes.17 = private unnamed_addr constant [1 x i64] [i64 134217728]
@.offload_maptypes.18 = private unnamed_addr constant [1 x i64] [i64 1]
@3 = private unnamed_addr constant %struct.ident_t { i32 0, i32 2050, i32 0, i32 22, ptr @0 }, align 8
@.__omp_offloading_10302_46e1258_main_l110.region_id = weak constant i8 0
@.offload_sizes.21 = private unnamed_addr constant [3 x i64] zeroinitializer
@.offload_maptypes.22 = private unnamed_addr constant [3 x i64] [i64 544, i64 544, i64 544]
@.offload_sizes.23 = private unnamed_addr constant [1 x i64] [i64 524288]
@.offload_maptypes.24 = private unnamed_addr constant [1 x i64] [i64 2]
@.offload_sizes.25 = private unnamed_addr constant [1 x i64] [i64 134217728]
@.offload_maptypes.26 = private unnamed_addr constant [1 x i64] zeroinitializer
@.offload_sizes.27 = private unnamed_addr constant [1 x i64] [i64 134217728]
@.offload_maptypes.28 = private unnamed_addr constant [1 x i64] zeroinitializer
@.str.29 = private unnamed_addr constant [43 x i8] c"Error! res_d and res are different at i = \00", align 1
@.str.30 = private unnamed_addr constant [18 x i8] c" with res_d[i] = \00", align 1
@.str.31 = private unnamed_addr constant [61 x i8] c"0 && \22Error! Atomic update for Openmp GPU without rf fail\\n\22\00", align 1
@.str.32 = private unnamed_addr constant [48 x i8] c"Time for GPU openmp atomic without rf with N = \00", align 1
@.offload_sizes.33 = private unnamed_addr constant [1 x i64] [i64 8388608]
@.offload_maptypes.34 = private unnamed_addr constant [1 x i64] [i64 1]
@.offload_sizes.35 = private unnamed_addr constant [1 x i64] [i64 134217728]
@.offload_maptypes.36 = private unnamed_addr constant [1 x i64] [i64 1]
@.offload_sizes.37 = private unnamed_addr constant [1 x i64] [i64 134217728]
@.offload_maptypes.38 = private unnamed_addr constant [1 x i64] [i64 1]
@.__omp_offloading_10302_46e1258_main_l143.region_id = weak constant i8 0
@.offload_sizes.41 = private unnamed_addr constant [3 x i64] zeroinitializer
@.offload_maptypes.42 = private unnamed_addr constant [3 x i64] [i64 544, i64 544, i64 544]
@.offload_sizes.43 = private unnamed_addr constant [1 x i64] [i64 8388608]
@.offload_maptypes.44 = private unnamed_addr constant [1 x i64] [i64 2]
@.offload_sizes.45 = private unnamed_addr constant [1 x i64] [i64 134217728]
@.offload_maptypes.46 = private unnamed_addr constant [1 x i64] zeroinitializer
@.offload_sizes.47 = private unnamed_addr constant [1 x i64] [i64 134217728]
@.offload_maptypes.48 = private unnamed_addr constant [1 x i64] zeroinitializer
@.str.49 = private unnamed_addr constant [46 x i8] c"Error! res_d_rf and res are different at i = \00", align 1
@.str.50 = private unnamed_addr constant [24 x i8] c" with res_d_rf[i*rf] = \00", align 1
@.str.51 = private unnamed_addr constant [58 x i8] c"0 && \22Error! Atomic update for Openmp GPU with rf fail\\n\22\00", align 1
@.str.52 = private unnamed_addr constant [45 x i8] c"Time for GPU openmp atomic with rf with N = \00", align 1
@.omp_offloading.entry_name = internal unnamed_addr constant [41 x i8] c"__omp_offloading_10302_46e1258_main_l110\00"
@.omp_offloading.entry.__omp_offloading_10302_46e1258_main_l110 = weak constant %struct.__tgt_offload_entry { ptr @.__omp_offloading_10302_46e1258_main_l110.region_id, ptr @.omp_offloading.entry_name, i64 0, i32 0, i32 0 }, section "omp_offloading_entries", align 1
@.omp_offloading.entry_name.53 = internal unnamed_addr constant [41 x i8] c"__omp_offloading_10302_46e1258_main_l143\00"
@.omp_offloading.entry.__omp_offloading_10302_46e1258_main_l143 = weak constant %struct.__tgt_offload_entry { ptr @.__omp_offloading_10302_46e1258_main_l143.region_id, ptr @.omp_offloading.entry_name.53, i64 0, i32 0, i32 0 }, section "omp_offloading_entries", align 1
@llvm.global_ctors = appending global [2 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 65535, ptr @_GLOBAL__sub_I_test_openmp.C, ptr null }, { i32, ptr, ptr } { i32 0, ptr @.omp_offloading.requires_reg, ptr null }]
@llvm.embedded.object = private constant [22976 x i8] c"\10\FF\10\AD\01\00\00\00\C0Y\00\00\00\00\00\00 \00\00\00\00\00\00\00(\00\00\00\00\00\00\00\00\00\01\00\00\00\00\00H\00\00\00\00\00\00\00\02\00\00\00\00\00\00\00\8F\00\00\00\00\00\00\00.Y\00\00\00\00\00\00n\00\00\00\00\00\00\00u\00\00\00\00\00\00\00i\00\00\00\00\00\00\00\89\00\00\00\00\00\00\00\00arch\00triple\00nvptx64-nvidia-cuda\00sm_70\00; ModuleID = 'test_openmp.C'\0Asource_filename = \22test_openmp.C\22\0Atarget datalayout = \22e-i64:64-i128:128-v16:16-v32:32-n16:32:64\22\0Atarget triple = \22nvptx64-nvidia-cuda\22\0A\0A%struct.ident_t = type { i32, i32, i32, i32, ptr }\0A\0A@__omp_rtl_debug_kind = weak_odr hidden constant i32 0\0A@__omp_rtl_assume_teams_oversubscription = weak_odr hidden constant i32 0\0A@__omp_rtl_assume_threads_oversubscription = weak_odr hidden constant i32 0\0A@__omp_rtl_assume_no_thread_state = weak_odr hidden constant i32 0\0A@0 = private unnamed_addr constant [23 x i8] c\22;unknown;unknown;0;0;;\\00\22, align 1\0A@1 = private unnamed_addr constant %struct.ident_t { i32 0, i32 2, i32 0, i32 22, ptr @0 }, align 8\0A@2 = private unnamed_addr constant %struct.ident_t { i32 0, i32 2050, i32 3, i32 22, ptr @0 }, align 8\0A@3 = private unnamed_addr constant %struct.ident_t { i32 0, i32 514, i32 3, i32 22, ptr @0 }, align 8\0A@4 = private unnamed_addr constant %struct.ident_t { i32 0, i32 2, i32 3, i32 22, ptr @0 }, align 8\0A@__omp_offloading_10302_46e1258_main_l110_exec_mode = weak constant i8 2\0A@__omp_offloading_10302_46e1258_main_l143_exec_mode = weak constant i8 2\0A@llvm.compiler.used = appending global [2 x ptr] [ptr @__omp_offloading_10302_46e1258_main_l110_exec_mode, ptr @__omp_offloading_10302_46e1258_main_l143_exec_mode], section \22llvm.metadata\22\0A\0A; Function Attrs: convergent noinline norecurse nounwind optnone\0Adefine weak_odr void @__omp_offloading_10302_46e1258_main_l110(ptr noundef %0, ptr noundef %1, ptr noundef %2) #0 {\0A  %4 = alloca ptr, align 8\0A  %5 = alloca ptr, align 8\0A  %6 = alloca ptr, align 8\0A  %7 = alloca i32, align 4\0A  %8 = alloca i32, align 4\0A  store ptr %0, ptr %4, align 8\0A  store ptr %1, ptr %5, align 8\0A  store ptr %2, ptr %6, align 8\0A  %9 = call i32 @__kmpc_target_init(ptr @1, i8 2, i1 false, i1 false)\0A  %10 = icmp eq i32 %9, -1\0A  br i1 %10, label %11, label %16\0A\0A11:                                               ; preds = %3\0A  %12 = call i32 @__kmpc_global_thread_num(ptr @4)\0A  %13 = load ptr, ptr %4, align 8\0A  %14 = load ptr, ptr %5, align 8\0A  %15 = load ptr, ptr %6, align 8\0A  store i32 0, ptr %7, align 4\0A  store i32 %12, ptr %8, align 4\0A  call void @__omp_outlined__(ptr %8, ptr %7, ptr %13, ptr %14, ptr %15) #2\0A  call void @__kmpc_target_deinit(ptr @1, i8 2, i1 false)\0A  ret void\0A\0A16:                                               ; preds = %3\0A  ret void\0A}\0A\0Adeclare i32 @__kmpc_target_init(ptr, i8, i1, i1)\0A\0A; Function Attrs: convergent noinline norecurse nounwind optnone\0Adefine internal void @__omp_outlined__(ptr noalias noundef %0, ptr noalias noundef %1, ptr noundef %2, ptr noundef %3, ptr noundef %4) #1 {\0A  %6 = alloca ptr, align 8\0A  %7 = alloca ptr, align 8\0A  %8 = alloca ptr, align 8\0A  %9 = alloca ptr, align 8\0A  %10 = alloca ptr, align 8\0A  %11 = alloca i32, align 4\0A  %12 = alloca i32, align 4\0A  %13 = alloca i32, align 4\0A  %14 = alloca i32, align 4\0A  %15 = alloca i32, align 4\0A  %16 = alloca i32, align 4\0A  %17 = alloca i32, align 4\0A  %18 = alloca [5 x ptr], align 8\0A  store ptr %0, ptr %6, align 8\0A  store ptr %1, ptr %7, align 8\0A  store ptr %2, ptr %8, align 8\0A  store ptr %3, ptr %9, align 8\0A  store ptr %4, ptr %10, align 8\0A  store i32 0, ptr %13, align 4\0A  store i32 33554431, ptr %14, align 4\0A  store i32 1, ptr %15, align 4\0A  store i32 0, ptr %16, align 4\0A  %19 = call i32 @__kmpc_get_hardware_num_threads_in_block()\0A  %20 = load ptr, ptr %6, align 8\0A  %21 = load i32, ptr %20, align 4\0A  call void @__kmpc_distribute_static_init_4(ptr @2, i32 %21, i32 91, ptr %16, ptr %13, ptr %14, ptr %15, i32 1, i32 %19)\0A  %22 = load i32, ptr %14, align 4\0A  %23 = icmp sgt i32 %22, 33554431\0A  br i1 %23, label %24, label %25\0A\0A24:                                               ; preds = %5\0A  br label %27\0A\0A25:                                               ; preds = %5\0A  %26 = load i32, ptr %14, align 4\0A  br label %27\0A\0A27:                                               ; preds = %25, %24\0A  %28 = phi i32 [ 33554431, %24 ], [ %26, %25 ]\0A  store i32 %28, ptr %14, align 4\0A  %29 = load i32, ptr %13, align 4\0A  store i32 %29, ptr %11, align 4\0A  br label %30\0A\0A30:                                               ; preds = %63, %27\0A  %31 = load i32, ptr %11, align 4, !llvm.access.group !10\0A  %32 = icmp slt i32 %31, 33554432\0A  br i1 %32, label %33, label %66\0A\0A33:                                               ; preds = %30\0A  %34 = load i32, ptr %13, align 4, !llvm.access.group !10\0A  %35 = zext i32 %34 to i64\0A  %36 = load i32, ptr %14, align 4, !llvm.access.group !10\0A  %37 = zext i32 %36 to i64\0A  %38 = load ptr, ptr %8, align 8, !llvm.access.group !10\0A  %39 = load ptr, ptr %9, align 8, !llvm.access.group !10\0A  %40 = load ptr, ptr %10, align 8, !llvm.access.group !10\0A  %41 = getelementptr inbounds [5 x ptr], ptr %18, i64 0, i64 0\0A  %42 = inttoptr i64 %35 to ptr\0A  store ptr %42, ptr %41, align 8, !llvm.access.group !10\0A  %43 = getelementptr inbounds [5 x ptr], ptr %18, i64 0, i64 1\0A  %44 = inttoptr i64 %37 to ptr\0A  store ptr %44, ptr %43, align 8, !llvm.access.group !10\0A  %45 = getelementptr inbounds [5 x ptr], ptr %18, i64 0, i64 2\0A  store ptr %38, ptr %45, align 8, !llvm.access.group !10\0A  %46 = getelementptr inbounds [5 x ptr], ptr %18, i64 0, i64 3\0A  store ptr %39, ptr %46, align 8, !llvm.access.group !10\0A  %47 = getelementptr inbounds [5 x ptr], ptr %18, i64 0, i64 4\0A  store ptr %40, ptr %47, align 8, !llvm.access.group !10\0A  call void @__kmpc_parallel_51(ptr @4, i32 %21, i32 1, i32 -1, i32 -1, ptr @__omp_outlined__1, ptr null, ptr %18, i64 5), !llvm.access.group !10\0A  br label %48\0A\0A48:                                               ; preds = %33\0A  %49 = load i32, ptr %11, align 4, !llvm.access.group !10\0A  %50 = load i32, ptr %15, align 4, !llvm.access.group !10\0A  %51 = add nsw i32 %49, %50\0A  store i32 %51, ptr %11, align 4, !llvm.access.group !10\0A  %52 = load i32, ptr %13, align 4, !llvm.access.group !10\0A  %53 = load i32, ptr %15, align 4, !llvm.access.group !10\0A  %54 = add nsw i32 %52, %53\0A  store i32 %54, ptr %13, align 4, !llvm.access.group !10\0A  %55 = load i32, ptr %14, align 4, !llvm.access.group !10\0A  %56 = load i32, ptr %15, align 4, !llvm.access.group !10\0A  %57 = add nsw i32 %55, %56\0A  store i32 %57, ptr %14, align 4, !llvm.access.group !10\0A  %58 = load i32, ptr %14, align 4, !llvm.access.group !10\0A  %59 = icmp sgt i32 %58, 33554431\0A  br i1 %59, label %60, label %61\0A\0A60:                                               ; preds = %48\0A  br label %63\0A\0A61:                                               ; preds = %48\0A  %62 = load i32, ptr %14, align 4, !llvm.access.group !10\0A  br label %63\0A\0A63:                                               ; preds = %61, %60\0A  %64 = phi i32 [ 33554431, %60 ], [ %62, %61 ]\0A  store i32 %64, ptr %14, align 4, !llvm.access.group !10\0A  %65 = load i32, ptr %13, align 4, !llvm.access.group !10\0A  store i32 %65, ptr %11, align 4, !llvm.access.group !10\0A  br label %30, !llvm.loop !11\0A\0A66:                                               ; preds = %30\0A  br label %67\0A\0A67:                                               ; preds = %66\0A  call void @__kmpc_distribute_static_fini(ptr @2, i32 %21)\0A  %68 = load i32, ptr %16, align 4\0A  %69 = icmp ne i32 %68, 0\0A  br i1 %69, label %70, label %71\0A\0A70:                                               ; preds = %67\0A  store i32 33554432, ptr %17, align 4\0A  br label %71\0A\0A71:                                               ; preds = %70, %67\0A  ret void\0A}\0A\0Adeclare i32 @__kmpc_get_hardware_num_threads_in_block()\0A\0Adeclare void @__kmpc_distribute_static_init_4(ptr, i32, i32, ptr, ptr, ptr, ptr, i32, i32)\0A\0A; Function Attrs: convergent noinline norecurse nounwind optnone\0Adefine internal void @__omp_outlined__1(ptr noalias noundef %0, ptr noalias noundef %1, i64 noundef %2, i64 noundef %3, ptr noundef %4, ptr noundef %5, ptr noundef %6) #1 {\0A  %8 = alloca ptr, align 8\0A  %9 = alloca ptr, align 8\0A  %10 = alloca i64, align 8\0A  %11 = alloca i64, align 8\0A  %12 = alloca ptr, align 8\0A  %13 = alloca ptr, align 8\0A  %14 = alloca ptr, align 8\0A  %15 = alloca i32, align 4\0A  %16 = alloca i32, align 4\0A  %17 = alloca i32, align 4\0A  %18 = alloca i32, align 4\0A  %19 = alloca i32, align 4\0A  %20 = alloca i32, align 4\0A  %21 = alloca i32, align 4\0A  store ptr %0, ptr %8, align 8\0A  store ptr %1, ptr %9, align 8\0A  store i64 %2, ptr %10, align 8\0A  store i64 %3, ptr %11, align 8\0A  store ptr %4, ptr %12, align 8\0A  store ptr %5, ptr %13, align 8\0A  store ptr %6, ptr %14, align 8\0A  store i32 0, ptr %17, align 4\0A  store i32 33554431, ptr %18, align 4\0A  %22 = load i64, ptr %10, align 8\0A  %23 = trunc i64 %22 to i32\0A  %24 = load i64, ptr %11, align 8\0A  %25 = trunc i64 %24 to i32\0A  store i32 %23, ptr %17, align 4\0A  store i32 %25, ptr %18, align 4\0A  store i32 1, ptr %19, align 4\0A  store i32 0, ptr %20, align 4\0A  %26 = load ptr, ptr %8, align 8\0A  %27 = load i32, ptr %26, align 4\0A  call void @__kmpc_for_static_init_4(ptr @3, i32 %27, i32 33, ptr %20, ptr %17, ptr %18, ptr %19, i32 1, i32 1)\0A  %28 = load i32, ptr %17, align 4\0A  store i32 %28, ptr %15, align 4\0A  br label %29\0A\0A29:                                               ; preds = %53, %7\0A  %30 = load i32, ptr %15, align 4, !llvm.access.group !14\0A  %31 = sext i32 %30 to i64\0A  %32 = load i64, ptr %11, align 8, !llvm.access.group !14\0A  %33 = icmp ule i64 %31, %32\0A  br i1 %33, label %34, label %57\0A\0A34:                                               ; preds = %29\0A  %35 = load i32, ptr %15, align 4, !llvm.access.group !14\0A  %36 = mul nsw i32 %35, 1\0A  %37 = add nsw i32 0, %36\0A  store i32 %37, ptr %21, align 4, !llvm.access.group !14\0A  %38 = load ptr, ptr %12, align 8, !llvm.access.group !14\0A  %39 = load ptr, ptr %13, align 8, !llvm.access.group !14\0A  %40 = load i32, ptr %21, align 4, !llvm.access.group !14\0A  %41 = sext i32 %40 to i64\0A  %42 = getelementptr inbounds i32, ptr %39, i64 %41\0A  %43 = load i32, ptr %42, align 4, !llvm.access.group !14\0A  %44 = sext i32 %43 to i64\0A  %45 = getelementptr inbounds i32, ptr %38, i64 %44\0A  %46 = load ptr, ptr %14, align 8, !llvm.access.group !14\0A  %47 = load i32, ptr %21, align 4, !llvm.access.group !14\0A  %48 = sext i32 %47 to i64\0A  %49 = getelementptr inbounds i32, ptr %46, i64 %48\0A  %50 = load i32, ptr %49, align 4, !llvm.access.group !14\0A  %51 = atomicrmw add ptr %45, i32 %50 monotonic, align 4, !llvm.access.group !14\0A  br label %52\0A\0A52:                                               ; preds = %34\0A  br label %53\0A\0A53:                                               ; preds = %52\0A  %54 = load i32, ptr %15, align 4, !llvm.access.group !14\0A  %55 = load i32, ptr %19, align 4, !llvm.access.group !14\0A  %56 = add nsw i32 %54, %55\0A  store i32 %56, ptr %15, align 4, !llvm.access.group !14\0A  br label %29, !llvm.loop !15\0A\0A57:                                               ; preds = %29\0A  br label %58\0A\0A58:                                               ; preds = %57\0A  call void @__kmpc_distribute_static_fini(ptr @2, i32 %27)\0A  %59 = load i32, ptr %20, align 4\0A  %60 = icmp ne i32 %59, 0\0A  br i1 %60, label %61, label %62\0A\0A61:                                               ; preds = %58\0A  store i32 33554432, ptr %21, align 4\0A  br label %62\0A\0A62:                                               ; preds = %61, %58\0A  ret void\0A}\0A\0Adeclare void @__kmpc_for_static_init_4(ptr, i32, i32, ptr, ptr, ptr, ptr, i32, i32)\0A\0A; Function Attrs: nounwind\0Adeclare void @__kmpc_distribute_static_fini(ptr, i32) #2\0A\0A; Function Attrs: alwaysinline\0Adeclare void @__kmpc_parallel_51(ptr, i32, i32, i32, i32, ptr, ptr, ptr, i64) #3\0A\0A; Function Attrs: nounwind\0Adeclare i32 @__kmpc_global_thread_num(ptr) #2\0A\0Adeclare void @__kmpc_target_deinit(ptr, i8, i1)\0A\0A; Function Attrs: convergent noinline norecurse nounwind optnone\0Adefine weak_odr void @__omp_offloading_10302_46e1258_main_l143(ptr noundef %0, ptr noundef %1, ptr noundef %2) #0 {\0A  %4 = alloca ptr, align 8\0A  %5 = alloca ptr, align 8\0A  %6 = alloca ptr, align 8\0A  %7 = alloca i32, align 4\0A  %8 = alloca i32, align 4\0A  store ptr %0, ptr %4, align 8\0A  store ptr %1, ptr %5, align 8\0A  store ptr %2, ptr %6, align 8\0A  %9 = call i32 @__kmpc_target_init(ptr @1, i8 2, i1 false, i1 false)\0A  %10 = icmp eq i32 %9, -1\0A  br i1 %10, label %11, label %16\0A\0A11:                                               ; preds = %3\0A  %12 = call i32 @__kmpc_global_thread_num(ptr @4)\0A  %13 = load ptr, ptr %4, align 8\0A  %14 = load ptr, ptr %5, align 8\0A  %15 = load ptr, ptr %6, align 8\0A  store i32 0, ptr %7, align 4\0A  store i32 %12, ptr %8, align 4\0A  call void @__omp_outlined__2(ptr %8, ptr %7, ptr %13, ptr %14, ptr %15) #2\0A  call void @__kmpc_target_deinit(ptr @1, i8 2, i1 false)\0A  ret void\0A\0A16:                                               ; preds = %3\0A  ret void\0A}\0A\0A; Function Attrs: convergent noinline norecurse nounwind optnone\0Adefine internal void @__omp_outlined__2(ptr noalias noundef %0, ptr noalias noundef %1, ptr noundef %2, ptr noundef %3, ptr noundef %4) #1 {\0A  %6 = alloca ptr, align 8\0A  %7 = alloca ptr, align 8\0A  %8 = alloca ptr, align 8\0A  %9 = alloca ptr, align 8\0A  %10 = alloca ptr, align 8\0A  %11 = alloca i32, align 4\0A  %12 = alloca i32, align 4\0A  %13 = alloca i32, align 4\0A  %14 = alloca i32, align 4\0A  %15 = alloca i32, align 4\0A  %16 = alloca i32, align 4\0A  %17 = alloca i32, align 4\0A  %18 = alloca [5 x ptr], align 8\0A  store ptr %0, ptr %6, align 8\0A  store ptr %1, ptr %7, align 8\0A  store ptr %2, ptr %8, align 8\0A  store ptr %3, ptr %9, align 8\0A  store ptr %4, ptr %10, align 8\0A  store i32 0, ptr %13, align 4\0A  store i32 33554431, ptr %14, align 4\0A  store i32 1, ptr %15, align 4\0A  store i32 0, ptr %16, align 4\0A  %19 = call i32 @__kmpc_get_hardware_num_threads_in_block()\0A  %20 = load ptr, ptr %6, align 8\0A  %21 = load i32, ptr %20, align 4\0A  call void @__kmpc_distribute_static_init_4(ptr @2, i32 %21, i32 91, ptr %16, ptr %13, ptr %14, ptr %15, i32 1, i32 %19)\0A  %22 = load i32, ptr %14, align 4\0A  %23 = icmp sgt i32 %22, 33554431\0A  br i1 %23, label %24, label %25\0A\0A24:                                               ; preds = %5\0A  br label %27\0A\0A25:                                               ; preds = %5\0A  %26 = load i32, ptr %14, align 4\0A  br label %27\0A\0A27:                                               ; preds = %25, %24\0A  %28 = phi i32 [ 33554431, %24 ], [ %26, %25 ]\0A  store i32 %28, ptr %14, align 4\0A  %29 = load i32, ptr %13, align 4\0A  store i32 %29, ptr %11, align 4\0A  br label %30\0A\0A30:                                               ; preds = %63, %27\0A  %31 = load i32, ptr %11, align 4, !llvm.access.group !17\0A  %32 = icmp slt i32 %31, 33554432\0A  br i1 %32, label %33, label %66\0A\0A33:                                               ; preds = %30\0A  %34 = load i32, ptr %13, align 4, !llvm.access.group !17\0A  %35 = zext i32 %34 to i64\0A  %36 = load i32, ptr %14, align 4, !llvm.access.group !17\0A  %37 = zext i32 %36 to i64\0A  %38 = load ptr, ptr %8, align 8, !llvm.access.group !17\0A  %39 = load ptr, ptr %9, align 8, !llvm.access.group !17\0A  %40 = load ptr, ptr %10, align 8, !llvm.access.group !17\0A  %41 = getelementptr inbounds [5 x ptr], ptr %18, i64 0, i64 0\0A  %42 = inttoptr i64 %35 to ptr\0A  store ptr %42, ptr %41, align 8, !llvm.access.group !17\0A  %43 = getelementptr inbounds [5 x ptr], ptr %18, i64 0, i64 1\0A  %44 = inttoptr i64 %37 to ptr\0A  store ptr %44, ptr %43, align 8, !llvm.access.group !17\0A  %45 = getelementptr inbounds [5 x ptr], ptr %18, i64 0, i64 2\0A  store ptr %38, ptr %45, align 8, !llvm.access.group !17\0A  %46 = getelementptr inbounds [5 x ptr], ptr %18, i64 0, i64 3\0A  store ptr %39, ptr %46, align 8, !llvm.access.group !17\0A  %47 = getelementptr inbounds [5 x ptr], ptr %18, i64 0, i64 4\0A  store ptr %40, ptr %47, align 8, !llvm.access.group !17\0A  call void @__kmpc_parallel_51(ptr @4, i32 %21, i32 1, i32 -1, i32 -1, ptr @__omp_outlined__3, ptr null, ptr %18, i64 5), !llvm.access.group !17\0A  br label %48\0A\0A48:                                               ; preds = %33\0A  %49 = load i32, ptr %11, align 4, !llvm.access.group !17\0A  %50 = load i32, ptr %15, align 4, !llvm.access.group !17\0A  %51 = add nsw i32 %49, %50\0A  store i32 %51, ptr %11, align 4, !llvm.access.group !17\0A  %52 = load i32, ptr %13, align 4, !llvm.access.group !17\0A  %53 = load i32, ptr %15, align 4, !llvm.access.group !17\0A  %54 = add nsw i32 %52, %53\0A  store i32 %54, ptr %13, align 4, !llvm.access.group !17\0A  %55 = load i32, ptr %14, align 4, !llvm.access.group !17\0A  %56 = load i32, ptr %15, align 4, !llvm.access.group !17\0A  %57 = add nsw i32 %55, %56\0A  store i32 %57, ptr %14, align 4, !llvm.access.group !17\0A  %58 = load i32, ptr %14, align 4, !llvm.access.group !17\0A  %59 = icmp sgt i32 %58, 33554431\0A  br i1 %59, label %60, label %61\0A\0A60:                                               ; preds = %48\0A  br label %63\0A\0A61:                                               ; preds = %48\0A  %62 = load i32, ptr %14, align 4, !llvm.access.group !17\0A  br label %63\0A\0A63:                                               ; preds = %61, %60\0A  %64 = phi i32 [ 33554431, %60 ], [ %62, %61 ]\0A  store i32 %64, ptr %14, align 4, !llvm.access.group !17\0A  %65 = load i32, ptr %13, align 4, !llvm.access.group !17\0A  store i32 %65, ptr %11, align 4, !llvm.access.group !17\0A  br label %30, !llvm.loop !18\0A\0A66:                                               ; preds = %30\0A  br label %67\0A\0A67:                                               ; preds = %66\0A  call void @__kmpc_distribute_static_fini(ptr @2, i32 %21)\0A  %68 = load i32, ptr %16, align 4\0A  %69 = icmp ne i32 %68, 0\0A  br i1 %69, label %70, label %71\0A\0A70:                                               ; preds = %67\0A  store i32 33554432, ptr %17, align 4\0A  br label %71\0A\0A71:                                               ; preds = %70, %67\0A  ret void\0A}\0A\0A; Function Attrs: convergent noinline norecurse nounwind optnone\0Adefine internal void @__omp_outlined__3(ptr noalias noundef %0, ptr noalias noundef %1, i64 noundef %2, i64 noundef %3, ptr noundef %4, ptr noundef %5, ptr noundef %6) #1 {\0A  %8 = alloca ptr, align 8\0A  %9 = alloca ptr, align 8\0A  %10 = alloca i64, align 8\0A  %11 = alloca i64, align 8\0A  %12 = alloca ptr, align 8\0A  %13 = alloca ptr, align 8\0A  %14 = alloca ptr, align 8\0A  %15 = alloca i32, align 4\0A  %16 = alloca i32, align 4\0A  %17 = alloca i32, align 4\0A  %18 = alloca i32, align 4\0A  %19 = alloca i32, align 4\0A  %20 = alloca i32, align 4\0A  %21 = alloca i32, align 4\0A  store ptr %0, ptr %8, align 8\0A  store ptr %1, ptr %9, align 8\0A  store i64 %2, ptr %10, align 8\0A  store i64 %3, ptr %11, align 8\0A  store ptr %4, ptr %12, align 8\0A  store ptr %5, ptr %13, align 8\0A  store ptr %6, ptr %14, align 8\0A  store i32 0, ptr %17, align 4\0A  store i32 33554431, ptr %18, align 4\0A  %22 = load i64, ptr %10, align 8\0A  %23 = trunc i64 %22 to i32\0A  %24 = load i64, ptr %11, align 8\0A  %25 = trunc i64 %24 to i32\0A  store i32 %23, ptr %17, align 4\0A  store i32 %25, ptr %18, align 4\0A  store i32 1, ptr %19, align 4\0A  store i32 0, ptr %20, align 4\0A  %26 = load ptr, ptr %8, align 8\0A  %27 = load i32, ptr %26, align 4\0A  call void @__kmpc_for_static_init_4(ptr @3, i32 %27, i32 33, ptr %20, ptr %17, ptr %18, ptr %19, i32 1, i32 1)\0A  %28 = load i32, ptr %17, align 4\0A  store i32 %28, ptr %15, align 4\0A  br label %29\0A\0A29:                                               ; preds = %54, %7\0A  %30 = load i32, ptr %15, align 4, !llvm.access.group !20\0A  %31 = sext i32 %30 to i64\0A  %32 = load i64, ptr %11, align 8, !llvm.access.group !20\0A  %33 = icmp ule i64 %31, %32\0A  br i1 %33, label %34, label %58\0A\0A34:                                               ; preds = %29\0A  %35 = load i32, ptr %15, align 4, !llvm.access.group !20\0A  %36 = mul nsw i32 %35, 1\0A  %37 = add nsw i32 0, %36\0A  store i32 %37, ptr %21, align 4, !llvm.access.group !20\0A  %38 = load ptr, ptr %12, align 8, !llvm.access.group !20\0A  %39 = load ptr, ptr %13, align 8, !llvm.access.group !20\0A  %40 = load i32, ptr %21, align 4, !llvm.access.group !20\0A  %41 = sext i32 %40 to i64\0A  %42 = getelementptr inbounds i32, ptr %39, i64 %41\0A  %43 = load i32, ptr %42, align 4, !llvm.access.group !20\0A  %44 = mul nsw i32 %43, 16\0A  %45 = sext i32 %44 to i64\0A  %46 = getelementptr inbounds i32, ptr %38, i64 %45\0A  %47 = load ptr, ptr %14, align 8, !llvm.access.group !20\0A  %48 = load i32, ptr %21, align 4, !llvm.access.group !20\0A  %49 = sext i32 %48 to i64\0A  %50 = getelementptr inbounds i32, ptr %47, i64 %49\0A  %51 = load i32, ptr %50, align 4, !llvm.access.group !20\0A  %52 = atomicrmw add ptr %46, i32 %51 monotonic, align 4, !llvm.access.group !20\0A  br label %53\0A\0A53:                                               ; preds = %34\0A  br label %54\0A\0A54:                                               ; preds = %53\0A  %55 = load i32, ptr %15, align 4, !llvm.access.group !20\0A  %56 = load i32, ptr %19, align 4, !llvm.access.group !20\0A  %57 = add nsw i32 %55, %56\0A  store i32 %57, ptr %15, align 4, !llvm.access.group !20\0A  br label %29, !llvm.loop !21\0A\0A58:                                               ; preds = %29\0A  br label %59\0A\0A59:                                               ; preds = %58\0A  call void @__kmpc_distribute_static_fini(ptr @2, i32 %27)\0A  %60 = load i32, ptr %20, align 4\0A  %61 = icmp ne i32 %60, 0\0A  br i1 %61, label %62, label %63\0A\0A62:                                               ; preds = %59\0A  store i32 33554432, ptr %21, align 4\0A  br label %63\0A\0A63:                                               ; preds = %62, %59\0A  ret void\0A}\0A\0Aattributes #0 = { convergent noinline norecurse nounwind optnone \22frame-pointer\22=\22all\22 \22kernel\22 \22min-legal-vector-width\22=\220\22 \22no-trapping-math\22=\22true\22 \22stack-protector-buffer-size\22=\228\22 \22target-cpu\22=\22sm_70\22 \22target-features\22=\22+ptx72,+sm_70\22 }\0Aattributes #1 = { convergent noinline norecurse nounwind optnone \22frame-pointer\22=\22all\22 \22min-legal-vector-width\22=\220\22 \22no-trapping-math\22=\22true\22 \22stack-protector-buffer-size\22=\228\22 \22target-cpu\22=\22sm_70\22 \22target-features\22=\22+ptx72,+sm_70\22 }\0Aattributes #2 = { nounwind }\0Aattributes #3 = { alwaysinline }\0A\0A!omp_offload.info = !{!0, !1}\0A!nvvm.annotations = !{!2, !3}\0A!llvm.module.flags = !{!4, !5, !6, !7, !8}\0A!llvm.ident = !{!9}\0A\0A!0 = !{i32 0, i32 66306, i32 74322520, !\22main\22, i32 110, i32 0}\0A!1 = !{i32 0, i32 66306, i32 74322520, !\22main\22, i32 143, i32 1}\0A!2 = !{ptr @__omp_offloading_10302_46e1258_main_l110, !\22kernel\22, i32 1}\0A!3 = !{ptr @__omp_offloading_10302_46e1258_main_l143, !\22kernel\22, i32 1}\0A!4 = !{i32 1, !\22wchar_size\22, i32 4}\0A!5 = !{i32 7, !\22openmp\22, i32 50}\0A!6 = !{i32 7, !\22openmp-device\22, i32 50}\0A!7 = !{i32 7, !\22PIC Level\22, i32 2}\0A!8 = !{i32 7, !\22frame-pointer\22, i32 2}\0A!9 = !{!\22clang version 15.0.0 (https://github.com/llvm/llvm-project.git 22c6e7b277fbe6c65216d8c7a690d53c8122cb42)\22}\0A!10 = distinct !{}\0A!11 = distinct !{!11, !12, !13}\0A!12 = !{!\22llvm.loop.parallel_accesses\22, !10}\0A!13 = !{!\22llvm.loop.vectorize.enable\22, i1 true}\0A!14 = distinct !{}\0A!15 = distinct !{!15, !16, !13}\0A!16 = !{!\22llvm.loop.parallel_accesses\22, !14}\0A!17 = distinct !{}\0A!18 = distinct !{!18, !19, !13}\0A!19 = !{!\22llvm.loop.parallel_accesses\22, !17}\0A!20 = distinct !{}\0A!21 = distinct !{!21, !22, !13}\0A!22 = !{!\22llvm.loop.parallel_accesses\22, !20}\0A\00\00\00", section ".llvm.offloading", align 8
@llvm.compiler.used = appending global [1 x ptr] [ptr @llvm.embedded.object], section "llvm.metadata"

; Function Attrs: noinline uwtable
define internal void @__cxx_global_var_init() #0 section ".text.startup" {
  call void @_ZNSt8ios_base4InitC1Ev(ptr noundef nonnull align 1 dereferenceable(1) @_ZStL8__ioinit)
  %1 = call i32 @__cxa_atexit(ptr @_ZNSt8ios_base4InitD1Ev, ptr @_ZStL8__ioinit, ptr @__dso_handle) #3
  ret void
}

declare void @_ZNSt8ios_base4InitC1Ev(ptr noundef nonnull align 1 dereferenceable(1)) unnamed_addr #1

; Function Attrs: nounwind
declare void @_ZNSt8ios_base4InitD1Ev(ptr noundef nonnull align 1 dereferenceable(1)) unnamed_addr #2

; Function Attrs: nounwind
declare i32 @__cxa_atexit(ptr, ptr, ptr) #3

; Function Attrs: mustprogress noinline norecurse optnone uwtable
define dso_local noundef i32 @main() #4 {
  %1 = alloca i32, align 4
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca ptr, align 8
  %8 = alloca ptr, align 8
  %9 = alloca i32, align 4
  %10 = alloca ptr, align 8
  %11 = alloca ptr, align 8
  %12 = alloca ptr, align 8
  %13 = alloca ptr, align 8
  %14 = alloca ptr, align 8
  %15 = alloca i32, align 4
  %16 = alloca double, align 8
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  %19 = alloca i32, align 4
  %20 = alloca i8, align 1
  %21 = alloca i32, align 4
  %22 = alloca i32, align 4
  %23 = alloca i32, align 4
  %24 = alloca [1 x ptr], align 8
  %25 = alloca [1 x ptr], align 8
  %26 = alloca [1 x ptr], align 8
  %27 = alloca [1 x ptr], align 8
  %28 = alloca [1 x ptr], align 8
  %29 = alloca [1 x ptr], align 8
  %30 = alloca [1 x ptr], align 8
  %31 = alloca [1 x ptr], align 8
  %32 = alloca [1 x ptr], align 8
  %33 = alloca i32, align 4
  %34 = alloca [3 x ptr], align 8
  %35 = alloca [3 x ptr], align 8
  %36 = alloca [3 x ptr], align 8
  %37 = alloca i32, align 4
  %38 = alloca [1 x ptr], align 8
  %39 = alloca [1 x ptr], align 8
  %40 = alloca [1 x ptr], align 8
  %41 = alloca [1 x ptr], align 8
  %42 = alloca [1 x ptr], align 8
  %43 = alloca [1 x ptr], align 8
  %44 = alloca [1 x ptr], align 8
  %45 = alloca [1 x ptr], align 8
  %46 = alloca [1 x ptr], align 8
  %47 = alloca i32, align 4
  %48 = alloca [1 x ptr], align 8
  %49 = alloca [1 x ptr], align 8
  %50 = alloca [1 x ptr], align 8
  %51 = alloca [1 x ptr], align 8
  %52 = alloca [1 x ptr], align 8
  %53 = alloca [1 x ptr], align 8
  %54 = alloca [1 x ptr], align 8
  %55 = alloca [1 x ptr], align 8
  %56 = alloca [1 x ptr], align 8
  %57 = alloca i32, align 4
  %58 = alloca [3 x ptr], align 8
  %59 = alloca [3 x ptr], align 8
  %60 = alloca [3 x ptr], align 8
  %61 = alloca i32, align 4
  %62 = alloca [1 x ptr], align 8
  %63 = alloca [1 x ptr], align 8
  %64 = alloca [1 x ptr], align 8
  %65 = alloca [1 x ptr], align 8
  %66 = alloca [1 x ptr], align 8
  %67 = alloca [1 x ptr], align 8
  %68 = alloca [1 x ptr], align 8
  %69 = alloca [1 x ptr], align 8
  %70 = alloca [1 x ptr], align 8
  %71 = alloca i32, align 4
  store i32 0, ptr %1, align 4
  store i32 33554432, ptr %2, align 4
  store i32 131072, ptr %3, align 4
  store i32 10, ptr %4, align 4
  store i32 16, ptr %5, align 4
  store i32 0, ptr %6, align 4
  %72 = call noundef nonnull align 8 dereferenceable(8) ptr @_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc(ptr noundef nonnull align 8 dereferenceable(8) @_ZSt4cout, ptr noundef @.str)
  %73 = call noundef ptr @_ZNKSt9type_info4nameEv(ptr noundef nonnull align 8 dereferenceable(16) @_ZTIi) #3
  %74 = call noundef nonnull align 8 dereferenceable(8) ptr @_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc(ptr noundef nonnull align 8 dereferenceable(8) %72, ptr noundef %73)
  %75 = call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSolsEPFRSoS_E(ptr noundef nonnull align 8 dereferenceable(8) %74, ptr noundef @_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_)
  call void @srand(i32 noundef 1234) #3
  %76 = call noalias ptr @malloc(i64 noundef 134217728) #10
  store ptr %76, ptr %7, align 8
  %77 = call noalias ptr @malloc(i64 noundef 134217728) #10
  store ptr %77, ptr %8, align 8
  store i32 0, ptr %9, align 4
  br label %78

78:                                               ; preds = %94, %0
  %79 = load i32, ptr %9, align 4
  %80 = icmp slt i32 %79, 33554432
  br i1 %80, label %81, label %97

81:                                               ; preds = %78
  %82 = call i32 @rand() #3
  %83 = srem i32 %82, 131072
  %84 = load ptr, ptr %7, align 8
  %85 = load i32, ptr %9, align 4
  %86 = sext i32 %85 to i64
  %87 = getelementptr inbounds i32, ptr %84, i64 %86
  store i32 %83, ptr %87, align 4
  %88 = call i32 @rand() #3
  %89 = sdiv i32 %88, 2147483647
  %90 = load ptr, ptr %8, align 8
  %91 = load i32, ptr %9, align 4
  %92 = sext i32 %91 to i64
  %93 = getelementptr inbounds i32, ptr %90, i64 %92
  store i32 %89, ptr %93, align 4
  br label %94

94:                                               ; preds = %81
  %95 = load i32, ptr %9, align 4
  %96 = add nsw i32 %95, 1
  store i32 %96, ptr %9, align 4
  br label %78, !llvm.loop !9

97:                                               ; preds = %78
  %98 = call noalias ptr @malloc(i64 noundef 524288) #10
  store ptr %98, ptr %10, align 8
  %99 = call noalias ptr @malloc(i64 noundef 524288) #10
  store ptr %99, ptr %11, align 8
  %100 = call noalias ptr @malloc(i64 noundef 524288) #10
  store ptr %100, ptr %12, align 8
  %101 = call noalias ptr @malloc(i64 noundef 8388608) #10
  store ptr %101, ptr %13, align 8
  %102 = call noalias ptr @malloc(i64 noundef 8388608) #10
  store ptr %102, ptr %14, align 8
  store i32 0, ptr %15, align 4
  br label %103

103:                                              ; preds = %129, %97
  %104 = load i32, ptr %15, align 4
  %105 = icmp slt i32 %104, 131072
  br i1 %105, label %106, label %132

106:                                              ; preds = %103
  %107 = load ptr, ptr %14, align 8
  %108 = load i32, ptr %15, align 4
  %109 = mul nsw i32 %108, 16
  %110 = sext i32 %109 to i64
  %111 = getelementptr inbounds i32, ptr %107, i64 %110
  store i32 0, ptr %111, align 4
  %112 = load ptr, ptr %13, align 8
  %113 = load i32, ptr %15, align 4
  %114 = mul nsw i32 %113, 16
  %115 = sext i32 %114 to i64
  %116 = getelementptr inbounds i32, ptr %112, i64 %115
  store i32 0, ptr %116, align 4
  %117 = load ptr, ptr %12, align 8
  %118 = load i32, ptr %15, align 4
  %119 = sext i32 %118 to i64
  %120 = getelementptr inbounds i32, ptr %117, i64 %119
  store i32 0, ptr %120, align 4
  %121 = load ptr, ptr %11, align 8
  %122 = load i32, ptr %15, align 4
  %123 = sext i32 %122 to i64
  %124 = getelementptr inbounds i32, ptr %121, i64 %123
  store i32 0, ptr %124, align 4
  %125 = load ptr, ptr %10, align 8
  %126 = load i32, ptr %15, align 4
  %127 = sext i32 %126 to i64
  %128 = getelementptr inbounds i32, ptr %125, i64 %127
  store i32 0, ptr %128, align 4
  br label %129

129:                                              ; preds = %106
  %130 = load i32, ptr %15, align 4
  %131 = add nsw i32 %130, 1
  store i32 %131, ptr %15, align 4
  br label %103, !llvm.loop !11

132:                                              ; preds = %103
  store double 0.000000e+00, ptr %16, align 8
  store i32 0, ptr %17, align 4
  br label %133

133:                                              ; preds = %166, %132
  %134 = load i32, ptr %17, align 4
  %135 = icmp slt i32 %134, 10
  br i1 %135, label %136, label %169

136:                                              ; preds = %133
  %137 = call double @omp_get_wtime()
  %138 = load double, ptr %16, align 8
  %139 = fsub double %138, %137
  store double %139, ptr %16, align 8
  store i32 0, ptr %18, align 4
  br label %140

140:                                              ; preds = %159, %136
  %141 = load i32, ptr %18, align 4
  %142 = icmp slt i32 %141, 33554432
  br i1 %142, label %143, label %162

143:                                              ; preds = %140
  %144 = load ptr, ptr %8, align 8
  %145 = load i32, ptr %18, align 4
  %146 = sext i32 %145 to i64
  %147 = getelementptr inbounds i32, ptr %144, i64 %146
  %148 = load i32, ptr %147, align 4
  %149 = load ptr, ptr %10, align 8
  %150 = load ptr, ptr %7, align 8
  %151 = load i32, ptr %18, align 4
  %152 = sext i32 %151 to i64
  %153 = getelementptr inbounds i32, ptr %150, i64 %152
  %154 = load i32, ptr %153, align 4
  %155 = sext i32 %154 to i64
  %156 = getelementptr inbounds i32, ptr %149, i64 %155
  %157 = load i32, ptr %156, align 4
  %158 = add nsw i32 %157, %148
  store i32 %158, ptr %156, align 4
  br label %159

159:                                              ; preds = %143
  %160 = load i32, ptr %18, align 4
  %161 = add nsw i32 %160, 1
  store i32 %161, ptr %18, align 4
  br label %140, !llvm.loop !12

162:                                              ; preds = %140
  %163 = call double @omp_get_wtime()
  %164 = load double, ptr %16, align 8
  %165 = fadd double %164, %163
  store double %165, ptr %16, align 8
  br label %166

166:                                              ; preds = %162
  %167 = load i32, ptr %17, align 4
  %168 = add nsw i32 %167, 1
  store i32 %168, ptr %17, align 4
  br label %133, !llvm.loop !13

169:                                              ; preds = %133
  %170 = call noundef nonnull align 8 dereferenceable(8) ptr @_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc(ptr noundef nonnull align 8 dereferenceable(8) @_ZSt4cout, ptr noundef @.str.1)
  %171 = call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSolsEi(ptr noundef nonnull align 8 dereferenceable(8) %170, i32 noundef 33554432)
  %172 = call noundef nonnull align 8 dereferenceable(8) ptr @_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc(ptr noundef nonnull align 8 dereferenceable(8) %171, ptr noundef @.str.2)
  %173 = call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSolsEi(ptr noundef nonnull align 8 dereferenceable(8) %172, i32 noundef 131072)
  %174 = call noundef nonnull align 8 dereferenceable(8) ptr @_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc(ptr noundef nonnull align 8 dereferenceable(8) %173, ptr noundef @.str.3)
  %175 = load double, ptr %16, align 8
  %176 = call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSolsEd(ptr noundef nonnull align 8 dereferenceable(8) %174, double noundef %175)
  %177 = call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSolsEPFRSoS_E(ptr noundef nonnull align 8 dereferenceable(8) %176, ptr noundef @_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_)
  store double 0.000000e+00, ptr %16, align 8
  store i32 0, ptr %19, align 4
  br label %178

178:                                              ; preds = %188, %169
  %179 = load i32, ptr %19, align 4
  %180 = icmp slt i32 %179, 10
  br i1 %180, label %181, label %191

181:                                              ; preds = %178
  %182 = call double @omp_get_wtime()
  %183 = load double, ptr %16, align 8
  %184 = fsub double %183, %182
  store double %184, ptr %16, align 8
  call void (ptr, i32, ptr, ...) @__kmpc_fork_call(ptr @2, i32 3, ptr @.omp_outlined., ptr %11, ptr %7, ptr %8)
  %185 = call double @omp_get_wtime()
  %186 = load double, ptr %16, align 8
  %187 = fadd double %186, %185
  store double %187, ptr %16, align 8
  br label %188

188:                                              ; preds = %181
  %189 = load i32, ptr %19, align 4
  %190 = add nsw i32 %189, 1
  store i32 %190, ptr %19, align 4
  br label %178, !llvm.loop !14

191:                                              ; preds = %178
  store i8 0, ptr %20, align 1
  store i32 0, ptr %21, align 4
  br label %192

192:                                              ; preds = %230, %191
  %193 = load i32, ptr %21, align 4
  %194 = icmp slt i32 %193, 131072
  br i1 %194, label %195, label %233

195:                                              ; preds = %192
  %196 = load ptr, ptr %11, align 8
  %197 = load i32, ptr %21, align 4
  %198 = sext i32 %197 to i64
  %199 = getelementptr inbounds i32, ptr %196, i64 %198
  %200 = load i32, ptr %199, align 4
  %201 = load ptr, ptr %10, align 8
  %202 = load i32, ptr %21, align 4
  %203 = sext i32 %202 to i64
  %204 = getelementptr inbounds i32, ptr %201, i64 %203
  %205 = load i32, ptr %204, align 4
  %206 = sub nsw i32 %200, %205
  %207 = call i32 @abs(i32 noundef %206) #11
  %208 = load i32, ptr %6, align 4
  %209 = icmp sgt i32 %207, %208
  br i1 %209, label %210, label %229

210:                                              ; preds = %195
  %211 = call noundef nonnull align 8 dereferenceable(8) ptr @_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc(ptr noundef nonnull align 8 dereferenceable(8) @_ZSt4cout, ptr noundef @.str.4)
  %212 = load i32, ptr %21, align 4
  %213 = call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSolsEi(ptr noundef nonnull align 8 dereferenceable(8) %211, i32 noundef %212)
  %214 = call noundef nonnull align 8 dereferenceable(8) ptr @_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc(ptr noundef nonnull align 8 dereferenceable(8) %213, ptr noundef @.str.5)
  %215 = load ptr, ptr %11, align 8
  %216 = load i32, ptr %21, align 4
  %217 = sext i32 %216 to i64
  %218 = getelementptr inbounds i32, ptr %215, i64 %217
  %219 = load i32, ptr %218, align 4
  %220 = call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSolsEi(ptr noundef nonnull align 8 dereferenceable(8) %214, i32 noundef %219)
  %221 = call noundef nonnull align 8 dereferenceable(8) ptr @_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc(ptr noundef nonnull align 8 dereferenceable(8) %220, ptr noundef @.str.6)
  %222 = load ptr, ptr %10, align 8
  %223 = load i32, ptr %21, align 4
  %224 = sext i32 %223 to i64
  %225 = getelementptr inbounds i32, ptr %222, i64 %224
  %226 = load i32, ptr %225, align 4
  %227 = call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSolsEi(ptr noundef nonnull align 8 dereferenceable(8) %221, i32 noundef %226)
  %228 = call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSolsEPFRSoS_E(ptr noundef nonnull align 8 dereferenceable(8) %227, ptr noundef @_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_)
  store i8 1, ptr %20, align 1
  br label %229

229:                                              ; preds = %210, %195
  br label %230

230:                                              ; preds = %229
  %231 = load i32, ptr %21, align 4
  %232 = add nsw i32 %231, 1
  store i32 %232, ptr %21, align 4
  br label %192, !llvm.loop !15

233:                                              ; preds = %192
  %234 = load i8, ptr %20, align 1
  %235 = trunc i8 %234 to i1
  br i1 %235, label %236, label %237

236:                                              ; preds = %233
  call void @__assert_fail(ptr noundef @.str.7, ptr noundef @.str.8, i32 noundef 70, ptr noundef @__PRETTY_FUNCTION__.main) #12
  unreachable

237:                                              ; preds = %233
  %238 = call noundef nonnull align 8 dereferenceable(8) ptr @_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc(ptr noundef nonnull align 8 dereferenceable(8) @_ZSt4cout, ptr noundef @.str.9)
  %239 = call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSolsEi(ptr noundef nonnull align 8 dereferenceable(8) %238, i32 noundef 33554432)
  %240 = call noundef nonnull align 8 dereferenceable(8) ptr @_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc(ptr noundef nonnull align 8 dereferenceable(8) %239, ptr noundef @.str.2)
  %241 = call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSolsEi(ptr noundef nonnull align 8 dereferenceable(8) %240, i32 noundef 131072)
  %242 = call noundef nonnull align 8 dereferenceable(8) ptr @_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc(ptr noundef nonnull align 8 dereferenceable(8) %241, ptr noundef @.str.3)
  %243 = load double, ptr %16, align 8
  %244 = call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSolsEd(ptr noundef nonnull align 8 dereferenceable(8) %242, double noundef %243)
  %245 = call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSolsEPFRSoS_E(ptr noundef nonnull align 8 dereferenceable(8) %244, ptr noundef @_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_)
  store double 0.000000e+00, ptr %16, align 8
  store i32 0, ptr %22, align 4
  br label %246

246:                                              ; preds = %256, %237
  %247 = load i32, ptr %22, align 4
  %248 = icmp slt i32 %247, 10
  br i1 %248, label %249, label %259

249:                                              ; preds = %246
  %250 = call double @omp_get_wtime()
  %251 = load double, ptr %16, align 8
  %252 = fsub double %251, %250
  store double %252, ptr %16, align 8
  call void (ptr, i32, ptr, ...) @__kmpc_fork_call(ptr @2, i32 3, ptr @.omp_outlined..10, ptr %13, ptr %7, ptr %8)
  %253 = call double @omp_get_wtime()
  %254 = load double, ptr %16, align 8
  %255 = fadd double %254, %253
  store double %255, ptr %16, align 8
  br label %256

256:                                              ; preds = %249
  %257 = load i32, ptr %22, align 4
  %258 = add nsw i32 %257, 1
  store i32 %258, ptr %22, align 4
  br label %246, !llvm.loop !16

259:                                              ; preds = %246
  store i8 0, ptr %20, align 1
  store i32 0, ptr %23, align 4
  br label %260

260:                                              ; preds = %300, %259
  %261 = load i32, ptr %23, align 4
  %262 = icmp slt i32 %261, 131072
  br i1 %262, label %263, label %303

263:                                              ; preds = %260
  %264 = load ptr, ptr %13, align 8
  %265 = load i32, ptr %23, align 4
  %266 = mul nsw i32 %265, 16
  %267 = sext i32 %266 to i64
  %268 = getelementptr inbounds i32, ptr %264, i64 %267
  %269 = load i32, ptr %268, align 4
  %270 = load ptr, ptr %10, align 8
  %271 = load i32, ptr %23, align 4
  %272 = sext i32 %271 to i64
  %273 = getelementptr inbounds i32, ptr %270, i64 %272
  %274 = load i32, ptr %273, align 4
  %275 = sub nsw i32 %269, %274
  %276 = call i32 @abs(i32 noundef %275) #11
  %277 = load i32, ptr %6, align 4
  %278 = icmp sgt i32 %276, %277
  br i1 %278, label %279, label %299

279:                                              ; preds = %263
  %280 = call noundef nonnull align 8 dereferenceable(8) ptr @_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc(ptr noundef nonnull align 8 dereferenceable(8) @_ZSt4cout, ptr noundef @.str.11)
  %281 = load i32, ptr %23, align 4
  %282 = call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSolsEi(ptr noundef nonnull align 8 dereferenceable(8) %280, i32 noundef %281)
  %283 = call noundef nonnull align 8 dereferenceable(8) ptr @_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc(ptr noundef nonnull align 8 dereferenceable(8) %282, ptr noundef @.str.12)
  %284 = load ptr, ptr %13, align 8
  %285 = load i32, ptr %23, align 4
  %286 = mul nsw i32 %285, 16
  %287 = sext i32 %286 to i64
  %288 = getelementptr inbounds i32, ptr %284, i64 %287
  %289 = load i32, ptr %288, align 4
  %290 = call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSolsEi(ptr noundef nonnull align 8 dereferenceable(8) %283, i32 noundef %289)
  %291 = call noundef nonnull align 8 dereferenceable(8) ptr @_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc(ptr noundef nonnull align 8 dereferenceable(8) %290, ptr noundef @.str.6)
  %292 = load ptr, ptr %10, align 8
  %293 = load i32, ptr %23, align 4
  %294 = sext i32 %293 to i64
  %295 = getelementptr inbounds i32, ptr %292, i64 %294
  %296 = load i32, ptr %295, align 4
  %297 = call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSolsEi(ptr noundef nonnull align 8 dereferenceable(8) %291, i32 noundef %296)
  %298 = call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSolsEPFRSoS_E(ptr noundef nonnull align 8 dereferenceable(8) %297, ptr noundef @_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_)
  store i8 1, ptr %20, align 1
  br label %299

299:                                              ; preds = %279, %263
  br label %300

300:                                              ; preds = %299
  %301 = load i32, ptr %23, align 4
  %302 = add nsw i32 %301, 1
  store i32 %302, ptr %23, align 4
  br label %260, !llvm.loop !17

303:                                              ; preds = %260
  %304 = load i8, ptr %20, align 1
  %305 = trunc i8 %304 to i1
  br i1 %305, label %306, label %307

306:                                              ; preds = %303
  call void @__assert_fail(ptr noundef @.str.13, ptr noundef @.str.8, i32 noundef 98, ptr noundef @__PRETTY_FUNCTION__.main) #12
  unreachable

307:                                              ; preds = %303
  %308 = call noundef nonnull align 8 dereferenceable(8) ptr @_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc(ptr noundef nonnull align 8 dereferenceable(8) @_ZSt4cout, ptr noundef @.str.14)
  %309 = call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSolsEi(ptr noundef nonnull align 8 dereferenceable(8) %308, i32 noundef 33554432)
  %310 = call noundef nonnull align 8 dereferenceable(8) ptr @_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc(ptr noundef nonnull align 8 dereferenceable(8) %309, ptr noundef @.str.2)
  %311 = call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSolsEi(ptr noundef nonnull align 8 dereferenceable(8) %310, i32 noundef 131072)
  %312 = call noundef nonnull align 8 dereferenceable(8) ptr @_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc(ptr noundef nonnull align 8 dereferenceable(8) %311, ptr noundef @.str.3)
  %313 = load double, ptr %16, align 8
  %314 = call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSolsEd(ptr noundef nonnull align 8 dereferenceable(8) %312, double noundef %313)
  %315 = call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSolsEPFRSoS_E(ptr noundef nonnull align 8 dereferenceable(8) %314, ptr noundef @_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_)
  %316 = load ptr, ptr %12, align 8
  %317 = load ptr, ptr %12, align 8
  %318 = getelementptr inbounds i32, ptr %317, i64 0
  %319 = getelementptr inbounds [1 x ptr], ptr %24, i32 0, i32 0
  store ptr %316, ptr %319, align 8
  %320 = getelementptr inbounds [1 x ptr], ptr %25, i32 0, i32 0
  store ptr %318, ptr %320, align 8
  %321 = getelementptr inbounds [1 x ptr], ptr %26, i64 0, i64 0
  store ptr null, ptr %321, align 8
  %322 = getelementptr inbounds [1 x ptr], ptr %24, i32 0, i32 0
  %323 = getelementptr inbounds [1 x ptr], ptr %25, i32 0, i32 0
  call void @__tgt_target_data_begin_mapper(ptr @2, i64 -1, i32 1, ptr %322, ptr %323, ptr @.offload_sizes, ptr @.offload_maptypes, ptr null, ptr null)
  %324 = load ptr, ptr %8, align 8
  %325 = load ptr, ptr %8, align 8
  %326 = getelementptr inbounds i32, ptr %325, i64 0
  %327 = getelementptr inbounds [1 x ptr], ptr %27, i32 0, i32 0
  store ptr %324, ptr %327, align 8
  %328 = getelementptr inbounds [1 x ptr], ptr %28, i32 0, i32 0
  store ptr %326, ptr %328, align 8
  %329 = getelementptr inbounds [1 x ptr], ptr %29, i64 0, i64 0
  store ptr null, ptr %329, align 8
  %330 = getelementptr inbounds [1 x ptr], ptr %27, i32 0, i32 0
  %331 = getelementptr inbounds [1 x ptr], ptr %28, i32 0, i32 0
  call void @__tgt_target_data_begin_mapper(ptr @2, i64 -1, i32 1, ptr %330, ptr %331, ptr @.offload_sizes.15, ptr @.offload_maptypes.16, ptr null, ptr null)
  %332 = load ptr, ptr %7, align 8
  %333 = load ptr, ptr %7, align 8
  %334 = getelementptr inbounds i32, ptr %333, i64 0
  %335 = getelementptr inbounds [1 x ptr], ptr %30, i32 0, i32 0
  store ptr %332, ptr %335, align 8
  %336 = getelementptr inbounds [1 x ptr], ptr %31, i32 0, i32 0
  store ptr %334, ptr %336, align 8
  %337 = getelementptr inbounds [1 x ptr], ptr %32, i64 0, i64 0
  store ptr null, ptr %337, align 8
  %338 = getelementptr inbounds [1 x ptr], ptr %30, i32 0, i32 0
  %339 = getelementptr inbounds [1 x ptr], ptr %31, i32 0, i32 0
  call void @__tgt_target_data_begin_mapper(ptr @2, i64 -1, i32 1, ptr %338, ptr %339, ptr @.offload_sizes.17, ptr @.offload_maptypes.18, ptr null, ptr null)
  store double 0.000000e+00, ptr %16, align 8
  store i32 0, ptr %33, align 4
  br label %340

340:                                              ; preds = %368, %307
  %341 = load i32, ptr %33, align 4
  %342 = icmp slt i32 %341, 10
  br i1 %342, label %343, label %371

343:                                              ; preds = %340
  %344 = call double @omp_get_wtime()
  %345 = load double, ptr %16, align 8
  %346 = fsub double %345, %344
  store double %346, ptr %16, align 8
  %347 = load ptr, ptr %12, align 8
  %348 = load ptr, ptr %7, align 8
  %349 = load ptr, ptr %8, align 8
  %350 = getelementptr inbounds [3 x ptr], ptr %34, i32 0, i32 0
  store ptr %347, ptr %350, align 8
  %351 = getelementptr inbounds [3 x ptr], ptr %35, i32 0, i32 0
  store ptr %347, ptr %351, align 8
  %352 = getelementptr inbounds [3 x ptr], ptr %36, i64 0, i64 0
  store ptr null, ptr %352, align 8
  %353 = getelementptr inbounds [3 x ptr], ptr %34, i32 0, i32 1
  store ptr %348, ptr %353, align 8
  %354 = getelementptr inbounds [3 x ptr], ptr %35, i32 0, i32 1
  store ptr %348, ptr %354, align 8
  %355 = getelementptr inbounds [3 x ptr], ptr %36, i64 0, i64 1
  store ptr null, ptr %355, align 8
  %356 = getelementptr inbounds [3 x ptr], ptr %34, i32 0, i32 2
  store ptr %349, ptr %356, align 8
  %357 = getelementptr inbounds [3 x ptr], ptr %35, i32 0, i32 2
  store ptr %349, ptr %357, align 8
  %358 = getelementptr inbounds [3 x ptr], ptr %36, i64 0, i64 2
  store ptr null, ptr %358, align 8
  %359 = getelementptr inbounds [3 x ptr], ptr %34, i32 0, i32 0
  %360 = getelementptr inbounds [3 x ptr], ptr %35, i32 0, i32 0
  call void @__kmpc_push_target_tripcount_mapper(ptr @2, i64 -1, i64 33554432)
  %361 = call i32 @__tgt_target_teams_mapper(ptr @2, i64 -1, ptr @.__omp_offloading_10302_46e1258_main_l110.region_id, i32 3, ptr %359, ptr %360, ptr @.offload_sizes.21, ptr @.offload_maptypes.22, ptr null, ptr null, i32 0, i32 0)
  %362 = icmp ne i32 %361, 0
  br i1 %362, label %363, label %364

363:                                              ; preds = %343
  call void @__omp_offloading_10302_46e1258_main_l110(ptr %347, ptr %348, ptr %349) #3
  br label %364

364:                                              ; preds = %363, %343
  %365 = call double @omp_get_wtime()
  %366 = load double, ptr %16, align 8
  %367 = fadd double %366, %365
  store double %367, ptr %16, align 8
  br label %368

368:                                              ; preds = %364
  %369 = load i32, ptr %33, align 4
  %370 = add nsw i32 %369, 1
  store i32 %370, ptr %33, align 4
  br label %340, !llvm.loop !18

371:                                              ; preds = %340
  %372 = load ptr, ptr %12, align 8
  %373 = load ptr, ptr %12, align 8
  %374 = getelementptr inbounds i32, ptr %373, i64 0
  %375 = getelementptr inbounds [1 x ptr], ptr %38, i32 0, i32 0
  store ptr %372, ptr %375, align 8
  %376 = getelementptr inbounds [1 x ptr], ptr %39, i32 0, i32 0
  store ptr %374, ptr %376, align 8
  %377 = getelementptr inbounds [1 x ptr], ptr %40, i64 0, i64 0
  store ptr null, ptr %377, align 8
  %378 = getelementptr inbounds [1 x ptr], ptr %38, i32 0, i32 0
  %379 = getelementptr inbounds [1 x ptr], ptr %39, i32 0, i32 0
  call void @__tgt_target_data_end_mapper(ptr @2, i64 -1, i32 1, ptr %378, ptr %379, ptr @.offload_sizes.23, ptr @.offload_maptypes.24, ptr null, ptr null)
  %380 = load ptr, ptr %8, align 8
  %381 = load ptr, ptr %8, align 8
  %382 = getelementptr inbounds i32, ptr %381, i64 0
  %383 = getelementptr inbounds [1 x ptr], ptr %41, i32 0, i32 0
  store ptr %380, ptr %383, align 8
  %384 = getelementptr inbounds [1 x ptr], ptr %42, i32 0, i32 0
  store ptr %382, ptr %384, align 8
  %385 = getelementptr inbounds [1 x ptr], ptr %43, i64 0, i64 0
  store ptr null, ptr %385, align 8
  %386 = getelementptr inbounds [1 x ptr], ptr %41, i32 0, i32 0
  %387 = getelementptr inbounds [1 x ptr], ptr %42, i32 0, i32 0
  call void @__tgt_target_data_end_mapper(ptr @2, i64 -1, i32 1, ptr %386, ptr %387, ptr @.offload_sizes.25, ptr @.offload_maptypes.26, ptr null, ptr null)
  %388 = load ptr, ptr %7, align 8
  %389 = load ptr, ptr %7, align 8
  %390 = getelementptr inbounds i32, ptr %389, i64 0
  %391 = getelementptr inbounds [1 x ptr], ptr %44, i32 0, i32 0
  store ptr %388, ptr %391, align 8
  %392 = getelementptr inbounds [1 x ptr], ptr %45, i32 0, i32 0
  store ptr %390, ptr %392, align 8
  %393 = getelementptr inbounds [1 x ptr], ptr %46, i64 0, i64 0
  store ptr null, ptr %393, align 8
  %394 = getelementptr inbounds [1 x ptr], ptr %44, i32 0, i32 0
  %395 = getelementptr inbounds [1 x ptr], ptr %45, i32 0, i32 0
  call void @__tgt_target_data_end_mapper(ptr @2, i64 -1, i32 1, ptr %394, ptr %395, ptr @.offload_sizes.27, ptr @.offload_maptypes.28, ptr null, ptr null)
  store i32 0, ptr %47, align 4
  br label %396

396:                                              ; preds = %434, %371
  %397 = load i32, ptr %47, align 4
  %398 = icmp slt i32 %397, 131072
  br i1 %398, label %399, label %437

399:                                              ; preds = %396
  %400 = load ptr, ptr %12, align 8
  %401 = load i32, ptr %47, align 4
  %402 = sext i32 %401 to i64
  %403 = getelementptr inbounds i32, ptr %400, i64 %402
  %404 = load i32, ptr %403, align 4
  %405 = load ptr, ptr %10, align 8
  %406 = load i32, ptr %47, align 4
  %407 = sext i32 %406 to i64
  %408 = getelementptr inbounds i32, ptr %405, i64 %407
  %409 = load i32, ptr %408, align 4
  %410 = sub nsw i32 %404, %409
  %411 = call i32 @abs(i32 noundef %410) #11
  %412 = load i32, ptr %6, align 4
  %413 = icmp sgt i32 %411, %412
  br i1 %413, label %414, label %433

414:                                              ; preds = %399
  %415 = call noundef nonnull align 8 dereferenceable(8) ptr @_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc(ptr noundef nonnull align 8 dereferenceable(8) @_ZSt4cout, ptr noundef @.str.29)
  %416 = load i32, ptr %47, align 4
  %417 = call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSolsEi(ptr noundef nonnull align 8 dereferenceable(8) %415, i32 noundef %416)
  %418 = call noundef nonnull align 8 dereferenceable(8) ptr @_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc(ptr noundef nonnull align 8 dereferenceable(8) %417, ptr noundef @.str.30)
  %419 = load ptr, ptr %12, align 8
  %420 = load i32, ptr %47, align 4
  %421 = sext i32 %420 to i64
  %422 = getelementptr inbounds i32, ptr %419, i64 %421
  %423 = load i32, ptr %422, align 4
  %424 = call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSolsEi(ptr noundef nonnull align 8 dereferenceable(8) %418, i32 noundef %423)
  %425 = call noundef nonnull align 8 dereferenceable(8) ptr @_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc(ptr noundef nonnull align 8 dereferenceable(8) %424, ptr noundef @.str.6)
  %426 = load ptr, ptr %10, align 8
  %427 = load i32, ptr %47, align 4
  %428 = sext i32 %427 to i64
  %429 = getelementptr inbounds i32, ptr %426, i64 %428
  %430 = load i32, ptr %429, align 4
  %431 = call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSolsEi(ptr noundef nonnull align 8 dereferenceable(8) %425, i32 noundef %430)
  %432 = call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSolsEPFRSoS_E(ptr noundef nonnull align 8 dereferenceable(8) %431, ptr noundef @_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_)
  store i8 1, ptr %20, align 1
  br label %433

433:                                              ; preds = %414, %399
  br label %434

434:                                              ; preds = %433
  %435 = load i32, ptr %47, align 4
  %436 = add nsw i32 %435, 1
  store i32 %436, ptr %47, align 4
  br label %396, !llvm.loop !19

437:                                              ; preds = %396
  %438 = load i8, ptr %20, align 1
  %439 = trunc i8 %438 to i1
  br i1 %439, label %440, label %441

440:                                              ; preds = %437
  call void @__assert_fail(ptr noundef @.str.31, ptr noundef @.str.8, i32 noundef 131, ptr noundef @__PRETTY_FUNCTION__.main) #12
  unreachable

441:                                              ; preds = %437
  %442 = call noundef nonnull align 8 dereferenceable(8) ptr @_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc(ptr noundef nonnull align 8 dereferenceable(8) @_ZSt4cout, ptr noundef @.str.32)
  %443 = call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSolsEi(ptr noundef nonnull align 8 dereferenceable(8) %442, i32 noundef 33554432)
  %444 = call noundef nonnull align 8 dereferenceable(8) ptr @_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc(ptr noundef nonnull align 8 dereferenceable(8) %443, ptr noundef @.str.2)
  %445 = call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSolsEi(ptr noundef nonnull align 8 dereferenceable(8) %444, i32 noundef 131072)
  %446 = call noundef nonnull align 8 dereferenceable(8) ptr @_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc(ptr noundef nonnull align 8 dereferenceable(8) %445, ptr noundef @.str.3)
  %447 = load double, ptr %16, align 8
  %448 = call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSolsEd(ptr noundef nonnull align 8 dereferenceable(8) %446, double noundef %447)
  %449 = call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSolsEPFRSoS_E(ptr noundef nonnull align 8 dereferenceable(8) %448, ptr noundef @_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_)
  %450 = load ptr, ptr %14, align 8
  %451 = load ptr, ptr %14, align 8
  %452 = getelementptr inbounds i32, ptr %451, i64 0
  %453 = getelementptr inbounds [1 x ptr], ptr %48, i32 0, i32 0
  store ptr %450, ptr %453, align 8
  %454 = getelementptr inbounds [1 x ptr], ptr %49, i32 0, i32 0
  store ptr %452, ptr %454, align 8
  %455 = getelementptr inbounds [1 x ptr], ptr %50, i64 0, i64 0
  store ptr null, ptr %455, align 8
  %456 = getelementptr inbounds [1 x ptr], ptr %48, i32 0, i32 0
  %457 = getelementptr inbounds [1 x ptr], ptr %49, i32 0, i32 0
  call void @__tgt_target_data_begin_mapper(ptr @2, i64 -1, i32 1, ptr %456, ptr %457, ptr @.offload_sizes.33, ptr @.offload_maptypes.34, ptr null, ptr null)
  %458 = load ptr, ptr %8, align 8
  %459 = load ptr, ptr %8, align 8
  %460 = getelementptr inbounds i32, ptr %459, i64 0
  %461 = getelementptr inbounds [1 x ptr], ptr %51, i32 0, i32 0
  store ptr %458, ptr %461, align 8
  %462 = getelementptr inbounds [1 x ptr], ptr %52, i32 0, i32 0
  store ptr %460, ptr %462, align 8
  %463 = getelementptr inbounds [1 x ptr], ptr %53, i64 0, i64 0
  store ptr null, ptr %463, align 8
  %464 = getelementptr inbounds [1 x ptr], ptr %51, i32 0, i32 0
  %465 = getelementptr inbounds [1 x ptr], ptr %52, i32 0, i32 0
  call void @__tgt_target_data_begin_mapper(ptr @2, i64 -1, i32 1, ptr %464, ptr %465, ptr @.offload_sizes.35, ptr @.offload_maptypes.36, ptr null, ptr null)
  %466 = load ptr, ptr %7, align 8
  %467 = load ptr, ptr %7, align 8
  %468 = getelementptr inbounds i32, ptr %467, i64 0
  %469 = getelementptr inbounds [1 x ptr], ptr %54, i32 0, i32 0
  store ptr %466, ptr %469, align 8
  %470 = getelementptr inbounds [1 x ptr], ptr %55, i32 0, i32 0
  store ptr %468, ptr %470, align 8
  %471 = getelementptr inbounds [1 x ptr], ptr %56, i64 0, i64 0
  store ptr null, ptr %471, align 8
  %472 = getelementptr inbounds [1 x ptr], ptr %54, i32 0, i32 0
  %473 = getelementptr inbounds [1 x ptr], ptr %55, i32 0, i32 0
  call void @__tgt_target_data_begin_mapper(ptr @2, i64 -1, i32 1, ptr %472, ptr %473, ptr @.offload_sizes.37, ptr @.offload_maptypes.38, ptr null, ptr null)
  store double 0.000000e+00, ptr %16, align 8
  store i32 0, ptr %57, align 4
  br label %474

474:                                              ; preds = %502, %441
  %475 = load i32, ptr %57, align 4
  %476 = icmp slt i32 %475, 10
  br i1 %476, label %477, label %505

477:                                              ; preds = %474
  %478 = call double @omp_get_wtime()
  %479 = load double, ptr %16, align 8
  %480 = fsub double %479, %478
  store double %480, ptr %16, align 8
  %481 = load ptr, ptr %14, align 8
  %482 = load ptr, ptr %7, align 8
  %483 = load ptr, ptr %8, align 8
  %484 = getelementptr inbounds [3 x ptr], ptr %58, i32 0, i32 0
  store ptr %481, ptr %484, align 8
  %485 = getelementptr inbounds [3 x ptr], ptr %59, i32 0, i32 0
  store ptr %481, ptr %485, align 8
  %486 = getelementptr inbounds [3 x ptr], ptr %60, i64 0, i64 0
  store ptr null, ptr %486, align 8
  %487 = getelementptr inbounds [3 x ptr], ptr %58, i32 0, i32 1
  store ptr %482, ptr %487, align 8
  %488 = getelementptr inbounds [3 x ptr], ptr %59, i32 0, i32 1
  store ptr %482, ptr %488, align 8
  %489 = getelementptr inbounds [3 x ptr], ptr %60, i64 0, i64 1
  store ptr null, ptr %489, align 8
  %490 = getelementptr inbounds [3 x ptr], ptr %58, i32 0, i32 2
  store ptr %483, ptr %490, align 8
  %491 = getelementptr inbounds [3 x ptr], ptr %59, i32 0, i32 2
  store ptr %483, ptr %491, align 8
  %492 = getelementptr inbounds [3 x ptr], ptr %60, i64 0, i64 2
  store ptr null, ptr %492, align 8
  %493 = getelementptr inbounds [3 x ptr], ptr %58, i32 0, i32 0
  %494 = getelementptr inbounds [3 x ptr], ptr %59, i32 0, i32 0
  call void @__kmpc_push_target_tripcount_mapper(ptr @2, i64 -1, i64 33554432)
  %495 = call i32 @__tgt_target_teams_mapper(ptr @2, i64 -1, ptr @.__omp_offloading_10302_46e1258_main_l143.region_id, i32 3, ptr %493, ptr %494, ptr @.offload_sizes.41, ptr @.offload_maptypes.42, ptr null, ptr null, i32 0, i32 0)
  %496 = icmp ne i32 %495, 0
  br i1 %496, label %497, label %498

497:                                              ; preds = %477
  call void @__omp_offloading_10302_46e1258_main_l143(ptr %481, ptr %482, ptr %483) #3
  br label %498

498:                                              ; preds = %497, %477
  %499 = call double @omp_get_wtime()
  %500 = load double, ptr %16, align 8
  %501 = fadd double %500, %499
  store double %501, ptr %16, align 8
  br label %502

502:                                              ; preds = %498
  %503 = load i32, ptr %57, align 4
  %504 = add nsw i32 %503, 1
  store i32 %504, ptr %57, align 4
  br label %474, !llvm.loop !20

505:                                              ; preds = %474
  %506 = load ptr, ptr %14, align 8
  %507 = load ptr, ptr %14, align 8
  %508 = getelementptr inbounds i32, ptr %507, i64 0
  %509 = getelementptr inbounds [1 x ptr], ptr %62, i32 0, i32 0
  store ptr %506, ptr %509, align 8
  %510 = getelementptr inbounds [1 x ptr], ptr %63, i32 0, i32 0
  store ptr %508, ptr %510, align 8
  %511 = getelementptr inbounds [1 x ptr], ptr %64, i64 0, i64 0
  store ptr null, ptr %511, align 8
  %512 = getelementptr inbounds [1 x ptr], ptr %62, i32 0, i32 0
  %513 = getelementptr inbounds [1 x ptr], ptr %63, i32 0, i32 0
  call void @__tgt_target_data_end_mapper(ptr @2, i64 -1, i32 1, ptr %512, ptr %513, ptr @.offload_sizes.43, ptr @.offload_maptypes.44, ptr null, ptr null)
  %514 = load ptr, ptr %8, align 8
  %515 = load ptr, ptr %8, align 8
  %516 = getelementptr inbounds i32, ptr %515, i64 0
  %517 = getelementptr inbounds [1 x ptr], ptr %65, i32 0, i32 0
  store ptr %514, ptr %517, align 8
  %518 = getelementptr inbounds [1 x ptr], ptr %66, i32 0, i32 0
  store ptr %516, ptr %518, align 8
  %519 = getelementptr inbounds [1 x ptr], ptr %67, i64 0, i64 0
  store ptr null, ptr %519, align 8
  %520 = getelementptr inbounds [1 x ptr], ptr %65, i32 0, i32 0
  %521 = getelementptr inbounds [1 x ptr], ptr %66, i32 0, i32 0
  call void @__tgt_target_data_end_mapper(ptr @2, i64 -1, i32 1, ptr %520, ptr %521, ptr @.offload_sizes.45, ptr @.offload_maptypes.46, ptr null, ptr null)
  %522 = load ptr, ptr %7, align 8
  %523 = load ptr, ptr %7, align 8
  %524 = getelementptr inbounds i32, ptr %523, i64 0
  %525 = getelementptr inbounds [1 x ptr], ptr %68, i32 0, i32 0
  store ptr %522, ptr %525, align 8
  %526 = getelementptr inbounds [1 x ptr], ptr %69, i32 0, i32 0
  store ptr %524, ptr %526, align 8
  %527 = getelementptr inbounds [1 x ptr], ptr %70, i64 0, i64 0
  store ptr null, ptr %527, align 8
  %528 = getelementptr inbounds [1 x ptr], ptr %68, i32 0, i32 0
  %529 = getelementptr inbounds [1 x ptr], ptr %69, i32 0, i32 0
  call void @__tgt_target_data_end_mapper(ptr @2, i64 -1, i32 1, ptr %528, ptr %529, ptr @.offload_sizes.47, ptr @.offload_maptypes.48, ptr null, ptr null)
  store i32 0, ptr %71, align 4
  br label %530

530:                                              ; preds = %570, %505
  %531 = load i32, ptr %71, align 4
  %532 = icmp slt i32 %531, 131072
  br i1 %532, label %533, label %573

533:                                              ; preds = %530
  %534 = load ptr, ptr %14, align 8
  %535 = load i32, ptr %71, align 4
  %536 = mul nsw i32 %535, 16
  %537 = sext i32 %536 to i64
  %538 = getelementptr inbounds i32, ptr %534, i64 %537
  %539 = load i32, ptr %538, align 4
  %540 = load ptr, ptr %10, align 8
  %541 = load i32, ptr %71, align 4
  %542 = sext i32 %541 to i64
  %543 = getelementptr inbounds i32, ptr %540, i64 %542
  %544 = load i32, ptr %543, align 4
  %545 = sub nsw i32 %539, %544
  %546 = call i32 @abs(i32 noundef %545) #11
  %547 = load i32, ptr %6, align 4
  %548 = icmp sgt i32 %546, %547
  br i1 %548, label %549, label %569

549:                                              ; preds = %533
  %550 = call noundef nonnull align 8 dereferenceable(8) ptr @_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc(ptr noundef nonnull align 8 dereferenceable(8) @_ZSt4cout, ptr noundef @.str.49)
  %551 = load i32, ptr %71, align 4
  %552 = call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSolsEi(ptr noundef nonnull align 8 dereferenceable(8) %550, i32 noundef %551)
  %553 = call noundef nonnull align 8 dereferenceable(8) ptr @_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc(ptr noundef nonnull align 8 dereferenceable(8) %552, ptr noundef @.str.50)
  %554 = load ptr, ptr %14, align 8
  %555 = load i32, ptr %71, align 4
  %556 = mul nsw i32 %555, 16
  %557 = sext i32 %556 to i64
  %558 = getelementptr inbounds i32, ptr %554, i64 %557
  %559 = load i32, ptr %558, align 4
  %560 = call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSolsEi(ptr noundef nonnull align 8 dereferenceable(8) %553, i32 noundef %559)
  %561 = call noundef nonnull align 8 dereferenceable(8) ptr @_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc(ptr noundef nonnull align 8 dereferenceable(8) %560, ptr noundef @.str.6)
  %562 = load ptr, ptr %10, align 8
  %563 = load i32, ptr %71, align 4
  %564 = sext i32 %563 to i64
  %565 = getelementptr inbounds i32, ptr %562, i64 %564
  %566 = load i32, ptr %565, align 4
  %567 = call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSolsEi(ptr noundef nonnull align 8 dereferenceable(8) %561, i32 noundef %566)
  %568 = call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSolsEPFRSoS_E(ptr noundef nonnull align 8 dereferenceable(8) %567, ptr noundef @_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_)
  store i8 1, ptr %20, align 1
  br label %569

569:                                              ; preds = %549, %533
  br label %570

570:                                              ; preds = %569
  %571 = load i32, ptr %71, align 4
  %572 = add nsw i32 %571, 1
  store i32 %572, ptr %71, align 4
  br label %530, !llvm.loop !21

573:                                              ; preds = %530
  %574 = load i8, ptr %20, align 1
  %575 = trunc i8 %574 to i1
  br i1 %575, label %576, label %577

576:                                              ; preds = %573
  call void @__assert_fail(ptr noundef @.str.51, ptr noundef @.str.8, i32 noundef 164, ptr noundef @__PRETTY_FUNCTION__.main) #12
  unreachable

577:                                              ; preds = %573
  %578 = call noundef nonnull align 8 dereferenceable(8) ptr @_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc(ptr noundef nonnull align 8 dereferenceable(8) @_ZSt4cout, ptr noundef @.str.52)
  %579 = call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSolsEi(ptr noundef nonnull align 8 dereferenceable(8) %578, i32 noundef 33554432)
  %580 = call noundef nonnull align 8 dereferenceable(8) ptr @_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc(ptr noundef nonnull align 8 dereferenceable(8) %579, ptr noundef @.str.2)
  %581 = call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSolsEi(ptr noundef nonnull align 8 dereferenceable(8) %580, i32 noundef 131072)
  %582 = call noundef nonnull align 8 dereferenceable(8) ptr @_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc(ptr noundef nonnull align 8 dereferenceable(8) %581, ptr noundef @.str.3)
  %583 = load double, ptr %16, align 8
  %584 = call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSolsEd(ptr noundef nonnull align 8 dereferenceable(8) %582, double noundef %583)
  %585 = call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSolsEPFRSoS_E(ptr noundef nonnull align 8 dereferenceable(8) %584, ptr noundef @_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_)
  ret i32 0
}

declare noundef nonnull align 8 dereferenceable(8) ptr @_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc(ptr noundef nonnull align 8 dereferenceable(8), ptr noundef) #1

; Function Attrs: mustprogress noinline nounwind optnone uwtable
define linkonce_odr dso_local noundef ptr @_ZNKSt9type_info4nameEv(ptr noundef nonnull align 8 dereferenceable(16) %0) #5 comdat align 2 {
  %2 = alloca ptr, align 8
  store ptr %0, ptr %2, align 8
  %3 = load ptr, ptr %2, align 8
  %4 = getelementptr inbounds %"class.std::type_info", ptr %3, i32 0, i32 1
  %5 = load ptr, ptr %4, align 8
  %6 = getelementptr inbounds i8, ptr %5, i64 0
  %7 = load i8, ptr %6, align 1
  %8 = sext i8 %7 to i32
  %9 = icmp eq i32 %8, 42
  br i1 %9, label %10, label %14

10:                                               ; preds = %1
  %11 = getelementptr inbounds %"class.std::type_info", ptr %3, i32 0, i32 1
  %12 = load ptr, ptr %11, align 8
  %13 = getelementptr inbounds i8, ptr %12, i64 1
  br label %17

14:                                               ; preds = %1
  %15 = getelementptr inbounds %"class.std::type_info", ptr %3, i32 0, i32 1
  %16 = load ptr, ptr %15, align 8
  br label %17

17:                                               ; preds = %14, %10
  %18 = phi ptr [ %13, %10 ], [ %16, %14 ]
  ret ptr %18
}

declare noundef nonnull align 8 dereferenceable(8) ptr @_ZNSolsEPFRSoS_E(ptr noundef nonnull align 8 dereferenceable(8), ptr noundef) #1

declare noundef nonnull align 8 dereferenceable(8) ptr @_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_(ptr noundef nonnull align 8 dereferenceable(8)) #1

; Function Attrs: nounwind
declare void @srand(i32 noundef) #2

; Function Attrs: nounwind allocsize(0)
declare noalias ptr @malloc(i64 noundef) #6

; Function Attrs: nounwind
declare i32 @rand() #2

declare double @omp_get_wtime() #1

declare noundef nonnull align 8 dereferenceable(8) ptr @_ZNSolsEi(ptr noundef nonnull align 8 dereferenceable(8), i32 noundef) #1

declare noundef nonnull align 8 dereferenceable(8) ptr @_ZNSolsEd(ptr noundef nonnull align 8 dereferenceable(8), double noundef) #1

; Function Attrs: noinline norecurse nounwind optnone uwtable
define internal void @.omp_outlined.(ptr noalias noundef %0, ptr noalias noundef %1, ptr noundef nonnull align 8 dereferenceable(8) %2, ptr noundef nonnull align 8 dereferenceable(8) %3, ptr noundef nonnull align 8 dereferenceable(8) %4) #7 {
  %6 = alloca ptr, align 8
  %7 = alloca ptr, align 8
  %8 = alloca ptr, align 8
  %9 = alloca ptr, align 8
  %10 = alloca ptr, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  store ptr %0, ptr %6, align 8
  store ptr %1, ptr %7, align 8
  store ptr %2, ptr %8, align 8
  store ptr %3, ptr %9, align 8
  store ptr %4, ptr %10, align 8
  %18 = load ptr, ptr %8, align 8
  %19 = load ptr, ptr %9, align 8
  %20 = load ptr, ptr %10, align 8
  store i32 0, ptr %13, align 4
  store i32 33554431, ptr %14, align 4
  store i32 1, ptr %15, align 4
  store i32 0, ptr %16, align 4
  %21 = load ptr, ptr %6, align 8
  %22 = load i32, ptr %21, align 4
  call void @__kmpc_for_static_init_4(ptr @1, i32 %22, i32 34, ptr %16, ptr %13, ptr %14, ptr %15, i32 1, i32 1)
  %23 = load i32, ptr %14, align 4
  %24 = icmp sgt i32 %23, 33554431
  br i1 %24, label %25, label %26

25:                                               ; preds = %5
  br label %28

26:                                               ; preds = %5
  %27 = load i32, ptr %14, align 4
  br label %28

28:                                               ; preds = %26, %25
  %29 = phi i32 [ 33554431, %25 ], [ %27, %26 ]
  store i32 %29, ptr %14, align 4
  %30 = load i32, ptr %13, align 4
  store i32 %30, ptr %11, align 4
  br label %31

31:                                               ; preds = %54, %28
  %32 = load i32, ptr %11, align 4, !llvm.access.group !22
  %33 = load i32, ptr %14, align 4, !llvm.access.group !22
  %34 = icmp sle i32 %32, %33
  br i1 %34, label %35, label %57

35:                                               ; preds = %31
  %36 = load i32, ptr %11, align 4, !llvm.access.group !22
  %37 = mul nsw i32 %36, 1
  %38 = add nsw i32 0, %37
  store i32 %38, ptr %17, align 4, !llvm.access.group !22
  %39 = load ptr, ptr %18, align 8, !llvm.access.group !22
  %40 = load ptr, ptr %19, align 8, !llvm.access.group !22
  %41 = load i32, ptr %17, align 4, !llvm.access.group !22
  %42 = sext i32 %41 to i64
  %43 = getelementptr inbounds i32, ptr %40, i64 %42
  %44 = load i32, ptr %43, align 4, !llvm.access.group !22
  %45 = sext i32 %44 to i64
  %46 = getelementptr inbounds i32, ptr %39, i64 %45
  %47 = load ptr, ptr %20, align 8, !llvm.access.group !22
  %48 = load i32, ptr %17, align 4, !llvm.access.group !22
  %49 = sext i32 %48 to i64
  %50 = getelementptr inbounds i32, ptr %47, i64 %49
  %51 = load i32, ptr %50, align 4, !llvm.access.group !22
  %52 = atomicrmw add ptr %46, i32 %51 monotonic, align 4, !llvm.access.group !22
  br label %53

53:                                               ; preds = %35
  br label %54

54:                                               ; preds = %53
  %55 = load i32, ptr %11, align 4, !llvm.access.group !22
  %56 = add nsw i32 %55, 1
  store i32 %56, ptr %11, align 4, !llvm.access.group !22
  br label %31, !llvm.loop !23

57:                                               ; preds = %31
  br label %58

58:                                               ; preds = %57
  call void @__kmpc_for_static_fini(ptr @1, i32 %22)
  %59 = load i32, ptr %16, align 4
  %60 = icmp ne i32 %59, 0
  br i1 %60, label %61, label %62

61:                                               ; preds = %58
  store i32 33554432, ptr %17, align 4
  br label %62

62:                                               ; preds = %61, %58
  ret void
}

declare void @__kmpc_for_static_init_4(ptr, i32, i32, ptr, ptr, ptr, ptr, i32, i32)

; Function Attrs: nounwind
declare void @__kmpc_for_static_fini(ptr, i32) #3

; Function Attrs: nounwind
declare !callback !26 void @__kmpc_fork_call(ptr, i32, ptr, ...) #3

; Function Attrs: nounwind readnone willreturn
declare i32 @abs(i32 noundef) #8

; Function Attrs: noreturn nounwind
declare void @__assert_fail(ptr noundef, ptr noundef, i32 noundef, ptr noundef) #9

; Function Attrs: noinline norecurse nounwind optnone uwtable
define internal void @.omp_outlined..10(ptr noalias noundef %0, ptr noalias noundef %1, ptr noundef nonnull align 8 dereferenceable(8) %2, ptr noundef nonnull align 8 dereferenceable(8) %3, ptr noundef nonnull align 8 dereferenceable(8) %4) #7 {
  %6 = alloca ptr, align 8
  %7 = alloca ptr, align 8
  %8 = alloca ptr, align 8
  %9 = alloca ptr, align 8
  %10 = alloca ptr, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  store ptr %0, ptr %6, align 8
  store ptr %1, ptr %7, align 8
  store ptr %2, ptr %8, align 8
  store ptr %3, ptr %9, align 8
  store ptr %4, ptr %10, align 8
  %18 = load ptr, ptr %8, align 8
  %19 = load ptr, ptr %9, align 8
  %20 = load ptr, ptr %10, align 8
  store i32 0, ptr %13, align 4
  store i32 33554431, ptr %14, align 4
  store i32 1, ptr %15, align 4
  store i32 0, ptr %16, align 4
  %21 = load ptr, ptr %6, align 8
  %22 = load i32, ptr %21, align 4
  call void @__kmpc_for_static_init_4(ptr @1, i32 %22, i32 34, ptr %16, ptr %13, ptr %14, ptr %15, i32 1, i32 1)
  %23 = load i32, ptr %14, align 4
  %24 = icmp sgt i32 %23, 33554431
  br i1 %24, label %25, label %26

25:                                               ; preds = %5
  br label %28

26:                                               ; preds = %5
  %27 = load i32, ptr %14, align 4
  br label %28

28:                                               ; preds = %26, %25
  %29 = phi i32 [ 33554431, %25 ], [ %27, %26 ]
  store i32 %29, ptr %14, align 4
  %30 = load i32, ptr %13, align 4
  store i32 %30, ptr %11, align 4
  br label %31

31:                                               ; preds = %55, %28
  %32 = load i32, ptr %11, align 4, !llvm.access.group !28
  %33 = load i32, ptr %14, align 4, !llvm.access.group !28
  %34 = icmp sle i32 %32, %33
  br i1 %34, label %35, label %58

35:                                               ; preds = %31
  %36 = load i32, ptr %11, align 4, !llvm.access.group !28
  %37 = mul nsw i32 %36, 1
  %38 = add nsw i32 0, %37
  store i32 %38, ptr %17, align 4, !llvm.access.group !28
  %39 = load ptr, ptr %18, align 8, !llvm.access.group !28
  %40 = load ptr, ptr %19, align 8, !llvm.access.group !28
  %41 = load i32, ptr %17, align 4, !llvm.access.group !28
  %42 = sext i32 %41 to i64
  %43 = getelementptr inbounds i32, ptr %40, i64 %42
  %44 = load i32, ptr %43, align 4, !llvm.access.group !28
  %45 = mul nsw i32 %44, 16
  %46 = sext i32 %45 to i64
  %47 = getelementptr inbounds i32, ptr %39, i64 %46
  %48 = load ptr, ptr %20, align 8, !llvm.access.group !28
  %49 = load i32, ptr %17, align 4, !llvm.access.group !28
  %50 = sext i32 %49 to i64
  %51 = getelementptr inbounds i32, ptr %48, i64 %50
  %52 = load i32, ptr %51, align 4, !llvm.access.group !28
  %53 = atomicrmw add ptr %47, i32 %52 monotonic, align 4, !llvm.access.group !28
  br label %54

54:                                               ; preds = %35
  br label %55

55:                                               ; preds = %54
  %56 = load i32, ptr %11, align 4, !llvm.access.group !28
  %57 = add nsw i32 %56, 1
  store i32 %57, ptr %11, align 4, !llvm.access.group !28
  br label %31, !llvm.loop !29

58:                                               ; preds = %31
  br label %59

59:                                               ; preds = %58
  call void @__kmpc_for_static_fini(ptr @1, i32 %22)
  %60 = load i32, ptr %16, align 4
  %61 = icmp ne i32 %60, 0
  br i1 %61, label %62, label %63

62:                                               ; preds = %59
  store i32 33554432, ptr %17, align 4
  br label %63

63:                                               ; preds = %62, %59
  ret void
}

; Function Attrs: nounwind
declare void @__tgt_target_data_begin_mapper(ptr, i64, i32, ptr, ptr, ptr, ptr, ptr, ptr) #3

; Function Attrs: noinline norecurse nounwind optnone uwtable
define internal void @__omp_offloading_10302_46e1258_main_l110(ptr noundef %0, ptr noundef %1, ptr noundef %2) #7 {
  %4 = alloca ptr, align 8
  %5 = alloca ptr, align 8
  %6 = alloca ptr, align 8
  store ptr %0, ptr %4, align 8
  store ptr %1, ptr %5, align 8
  store ptr %2, ptr %6, align 8
  %7 = load ptr, ptr %4, align 8
  %8 = load ptr, ptr %5, align 8
  %9 = load ptr, ptr %6, align 8
  call void (ptr, i32, ptr, ...) @__kmpc_fork_teams(ptr @2, i32 3, ptr @.omp_outlined..19, ptr %7, ptr %8, ptr %9)
  ret void
}

; Function Attrs: noinline norecurse nounwind optnone uwtable
define internal void @.omp_outlined..19(ptr noalias noundef %0, ptr noalias noundef %1, ptr noundef %2, ptr noundef %3, ptr noundef %4) #7 {
  %6 = alloca ptr, align 8
  %7 = alloca ptr, align 8
  %8 = alloca ptr, align 8
  %9 = alloca ptr, align 8
  %10 = alloca ptr, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  store ptr %0, ptr %6, align 8
  store ptr %1, ptr %7, align 8
  store ptr %2, ptr %8, align 8
  store ptr %3, ptr %9, align 8
  store ptr %4, ptr %10, align 8
  store i32 0, ptr %13, align 4
  store i32 33554431, ptr %14, align 4
  store i32 1, ptr %15, align 4
  store i32 0, ptr %16, align 4
  %18 = load ptr, ptr %6, align 8
  %19 = load i32, ptr %18, align 4
  call void @__kmpc_for_static_init_4(ptr @3, i32 %19, i32 92, ptr %16, ptr %13, ptr %14, ptr %15, i32 1, i32 1)
  %20 = load i32, ptr %14, align 4
  %21 = icmp sgt i32 %20, 33554431
  br i1 %21, label %22, label %23

22:                                               ; preds = %5
  br label %25

23:                                               ; preds = %5
  %24 = load i32, ptr %14, align 4
  br label %25

25:                                               ; preds = %23, %22
  %26 = phi i32 [ 33554431, %22 ], [ %24, %23 ]
  store i32 %26, ptr %14, align 4
  %27 = load i32, ptr %13, align 4
  store i32 %27, ptr %11, align 4
  br label %28

28:                                               ; preds = %40, %25
  %29 = load i32, ptr %11, align 4, !llvm.access.group !31
  %30 = load i32, ptr %14, align 4, !llvm.access.group !31
  %31 = icmp sle i32 %29, %30
  br i1 %31, label %32, label %44

32:                                               ; preds = %28
  %33 = load i32, ptr %13, align 4, !llvm.access.group !31
  %34 = zext i32 %33 to i64
  %35 = load i32, ptr %14, align 4, !llvm.access.group !31
  %36 = zext i32 %35 to i64
  %37 = load ptr, ptr %8, align 8, !llvm.access.group !31
  %38 = load ptr, ptr %9, align 8, !llvm.access.group !31
  %39 = load ptr, ptr %10, align 8, !llvm.access.group !31
  call void (ptr, i32, ptr, ...) @__kmpc_fork_call(ptr @2, i32 5, ptr @.omp_outlined..20, i64 %34, i64 %36, ptr %37, ptr %38, ptr %39), !llvm.access.group !31
  br label %40

40:                                               ; preds = %32
  %41 = load i32, ptr %11, align 4, !llvm.access.group !31
  %42 = load i32, ptr %15, align 4, !llvm.access.group !31
  %43 = add nsw i32 %41, %42
  store i32 %43, ptr %11, align 4, !llvm.access.group !31
  br label %28, !llvm.loop !32

44:                                               ; preds = %28
  br label %45

45:                                               ; preds = %44
  call void @__kmpc_for_static_fini(ptr @3, i32 %19)
  %46 = load i32, ptr %16, align 4
  %47 = icmp ne i32 %46, 0
  br i1 %47, label %48, label %49

48:                                               ; preds = %45
  store i32 33554432, ptr %17, align 4
  br label %49

49:                                               ; preds = %48, %45
  ret void
}

; Function Attrs: noinline norecurse nounwind optnone uwtable
define internal void @.omp_outlined..20(ptr noalias noundef %0, ptr noalias noundef %1, i64 noundef %2, i64 noundef %3, ptr noundef %4, ptr noundef %5, ptr noundef %6) #7 {
  %8 = alloca ptr, align 8
  %9 = alloca ptr, align 8
  %10 = alloca i64, align 8
  %11 = alloca i64, align 8
  %12 = alloca ptr, align 8
  %13 = alloca ptr, align 8
  %14 = alloca ptr, align 8
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  %19 = alloca i32, align 4
  %20 = alloca i32, align 4
  %21 = alloca i32, align 4
  store ptr %0, ptr %8, align 8
  store ptr %1, ptr %9, align 8
  store i64 %2, ptr %10, align 8
  store i64 %3, ptr %11, align 8
  store ptr %4, ptr %12, align 8
  store ptr %5, ptr %13, align 8
  store ptr %6, ptr %14, align 8
  store i32 0, ptr %17, align 4
  store i32 33554431, ptr %18, align 4
  %22 = load i64, ptr %10, align 8
  %23 = trunc i64 %22 to i32
  %24 = load i64, ptr %11, align 8
  %25 = trunc i64 %24 to i32
  store i32 %23, ptr %17, align 4
  store i32 %25, ptr %18, align 4
  store i32 1, ptr %19, align 4
  store i32 0, ptr %20, align 4
  %26 = load ptr, ptr %8, align 8
  %27 = load i32, ptr %26, align 4
  call void @__kmpc_for_static_init_4(ptr @1, i32 %27, i32 34, ptr %20, ptr %17, ptr %18, ptr %19, i32 1, i32 1)
  %28 = load i32, ptr %18, align 4
  %29 = icmp sgt i32 %28, 33554431
  br i1 %29, label %30, label %31

30:                                               ; preds = %7
  br label %33

31:                                               ; preds = %7
  %32 = load i32, ptr %18, align 4
  br label %33

33:                                               ; preds = %31, %30
  %34 = phi i32 [ 33554431, %30 ], [ %32, %31 ]
  store i32 %34, ptr %18, align 4
  %35 = load i32, ptr %17, align 4
  store i32 %35, ptr %15, align 4
  br label %36

36:                                               ; preds = %59, %33
  %37 = load i32, ptr %15, align 4, !llvm.access.group !34
  %38 = load i32, ptr %18, align 4, !llvm.access.group !34
  %39 = icmp sle i32 %37, %38
  br i1 %39, label %40, label %62

40:                                               ; preds = %36
  %41 = load i32, ptr %15, align 4, !llvm.access.group !34
  %42 = mul nsw i32 %41, 1
  %43 = add nsw i32 0, %42
  store i32 %43, ptr %21, align 4, !llvm.access.group !34
  %44 = load ptr, ptr %12, align 8, !llvm.access.group !34
  %45 = load ptr, ptr %13, align 8, !llvm.access.group !34
  %46 = load i32, ptr %21, align 4, !llvm.access.group !34
  %47 = sext i32 %46 to i64
  %48 = getelementptr inbounds i32, ptr %45, i64 %47
  %49 = load i32, ptr %48, align 4, !llvm.access.group !34
  %50 = sext i32 %49 to i64
  %51 = getelementptr inbounds i32, ptr %44, i64 %50
  %52 = load ptr, ptr %14, align 8, !llvm.access.group !34
  %53 = load i32, ptr %21, align 4, !llvm.access.group !34
  %54 = sext i32 %53 to i64
  %55 = getelementptr inbounds i32, ptr %52, i64 %54
  %56 = load i32, ptr %55, align 4, !llvm.access.group !34
  %57 = atomicrmw add ptr %51, i32 %56 monotonic, align 4, !llvm.access.group !34
  br label %58

58:                                               ; preds = %40
  br label %59

59:                                               ; preds = %58
  %60 = load i32, ptr %15, align 4, !llvm.access.group !34
  %61 = add nsw i32 %60, 1
  store i32 %61, ptr %15, align 4, !llvm.access.group !34
  br label %36, !llvm.loop !35

62:                                               ; preds = %36
  br label %63

63:                                               ; preds = %62
  call void @__kmpc_for_static_fini(ptr @3, i32 %27)
  %64 = load i32, ptr %20, align 4
  %65 = icmp ne i32 %64, 0
  br i1 %65, label %66, label %67

66:                                               ; preds = %63
  store i32 33554432, ptr %21, align 4
  br label %67

67:                                               ; preds = %66, %63
  ret void
}

; Function Attrs: nounwind
declare !callback !26 void @__kmpc_fork_teams(ptr, i32, ptr, ...) #3

; Function Attrs: nounwind
declare void @__kmpc_push_target_tripcount_mapper(ptr, i64, i64) #3

; Function Attrs: nounwind
declare i32 @__tgt_target_teams_mapper(ptr, i64, ptr, i32, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32) #3

; Function Attrs: nounwind
declare void @__tgt_target_data_end_mapper(ptr, i64, i32, ptr, ptr, ptr, ptr, ptr, ptr) #3

; Function Attrs: noinline norecurse nounwind optnone uwtable
define internal void @__omp_offloading_10302_46e1258_main_l143(ptr noundef %0, ptr noundef %1, ptr noundef %2) #7 {
  %4 = alloca ptr, align 8
  %5 = alloca ptr, align 8
  %6 = alloca ptr, align 8
  store ptr %0, ptr %4, align 8
  store ptr %1, ptr %5, align 8
  store ptr %2, ptr %6, align 8
  %7 = load ptr, ptr %4, align 8
  %8 = load ptr, ptr %5, align 8
  %9 = load ptr, ptr %6, align 8
  call void (ptr, i32, ptr, ...) @__kmpc_fork_teams(ptr @2, i32 3, ptr @.omp_outlined..39, ptr %7, ptr %8, ptr %9)
  ret void
}

; Function Attrs: noinline norecurse nounwind optnone uwtable
define internal void @.omp_outlined..39(ptr noalias noundef %0, ptr noalias noundef %1, ptr noundef %2, ptr noundef %3, ptr noundef %4) #7 {
  %6 = alloca ptr, align 8
  %7 = alloca ptr, align 8
  %8 = alloca ptr, align 8
  %9 = alloca ptr, align 8
  %10 = alloca ptr, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  store ptr %0, ptr %6, align 8
  store ptr %1, ptr %7, align 8
  store ptr %2, ptr %8, align 8
  store ptr %3, ptr %9, align 8
  store ptr %4, ptr %10, align 8
  store i32 0, ptr %13, align 4
  store i32 33554431, ptr %14, align 4
  store i32 1, ptr %15, align 4
  store i32 0, ptr %16, align 4
  %18 = load ptr, ptr %6, align 8
  %19 = load i32, ptr %18, align 4
  call void @__kmpc_for_static_init_4(ptr @3, i32 %19, i32 92, ptr %16, ptr %13, ptr %14, ptr %15, i32 1, i32 1)
  %20 = load i32, ptr %14, align 4
  %21 = icmp sgt i32 %20, 33554431
  br i1 %21, label %22, label %23

22:                                               ; preds = %5
  br label %25

23:                                               ; preds = %5
  %24 = load i32, ptr %14, align 4
  br label %25

25:                                               ; preds = %23, %22
  %26 = phi i32 [ 33554431, %22 ], [ %24, %23 ]
  store i32 %26, ptr %14, align 4
  %27 = load i32, ptr %13, align 4
  store i32 %27, ptr %11, align 4
  br label %28

28:                                               ; preds = %40, %25
  %29 = load i32, ptr %11, align 4, !llvm.access.group !37
  %30 = load i32, ptr %14, align 4, !llvm.access.group !37
  %31 = icmp sle i32 %29, %30
  br i1 %31, label %32, label %44

32:                                               ; preds = %28
  %33 = load i32, ptr %13, align 4, !llvm.access.group !37
  %34 = zext i32 %33 to i64
  %35 = load i32, ptr %14, align 4, !llvm.access.group !37
  %36 = zext i32 %35 to i64
  %37 = load ptr, ptr %8, align 8, !llvm.access.group !37
  %38 = load ptr, ptr %9, align 8, !llvm.access.group !37
  %39 = load ptr, ptr %10, align 8, !llvm.access.group !37
  call void (ptr, i32, ptr, ...) @__kmpc_fork_call(ptr @2, i32 5, ptr @.omp_outlined..40, i64 %34, i64 %36, ptr %37, ptr %38, ptr %39), !llvm.access.group !37
  br label %40

40:                                               ; preds = %32
  %41 = load i32, ptr %11, align 4, !llvm.access.group !37
  %42 = load i32, ptr %15, align 4, !llvm.access.group !37
  %43 = add nsw i32 %41, %42
  store i32 %43, ptr %11, align 4, !llvm.access.group !37
  br label %28, !llvm.loop !38

44:                                               ; preds = %28
  br label %45

45:                                               ; preds = %44
  call void @__kmpc_for_static_fini(ptr @3, i32 %19)
  %46 = load i32, ptr %16, align 4
  %47 = icmp ne i32 %46, 0
  br i1 %47, label %48, label %49

48:                                               ; preds = %45
  store i32 33554432, ptr %17, align 4
  br label %49

49:                                               ; preds = %48, %45
  ret void
}

; Function Attrs: noinline norecurse nounwind optnone uwtable
define internal void @.omp_outlined..40(ptr noalias noundef %0, ptr noalias noundef %1, i64 noundef %2, i64 noundef %3, ptr noundef %4, ptr noundef %5, ptr noundef %6) #7 {
  %8 = alloca ptr, align 8
  %9 = alloca ptr, align 8
  %10 = alloca i64, align 8
  %11 = alloca i64, align 8
  %12 = alloca ptr, align 8
  %13 = alloca ptr, align 8
  %14 = alloca ptr, align 8
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  %19 = alloca i32, align 4
  %20 = alloca i32, align 4
  %21 = alloca i32, align 4
  store ptr %0, ptr %8, align 8
  store ptr %1, ptr %9, align 8
  store i64 %2, ptr %10, align 8
  store i64 %3, ptr %11, align 8
  store ptr %4, ptr %12, align 8
  store ptr %5, ptr %13, align 8
  store ptr %6, ptr %14, align 8
  store i32 0, ptr %17, align 4
  store i32 33554431, ptr %18, align 4
  %22 = load i64, ptr %10, align 8
  %23 = trunc i64 %22 to i32
  %24 = load i64, ptr %11, align 8
  %25 = trunc i64 %24 to i32
  store i32 %23, ptr %17, align 4
  store i32 %25, ptr %18, align 4
  store i32 1, ptr %19, align 4
  store i32 0, ptr %20, align 4
  %26 = load ptr, ptr %8, align 8
  %27 = load i32, ptr %26, align 4
  call void @__kmpc_for_static_init_4(ptr @1, i32 %27, i32 34, ptr %20, ptr %17, ptr %18, ptr %19, i32 1, i32 1)
  %28 = load i32, ptr %18, align 4
  %29 = icmp sgt i32 %28, 33554431
  br i1 %29, label %30, label %31

30:                                               ; preds = %7
  br label %33

31:                                               ; preds = %7
  %32 = load i32, ptr %18, align 4
  br label %33

33:                                               ; preds = %31, %30
  %34 = phi i32 [ 33554431, %30 ], [ %32, %31 ]
  store i32 %34, ptr %18, align 4
  %35 = load i32, ptr %17, align 4
  store i32 %35, ptr %15, align 4
  br label %36

36:                                               ; preds = %60, %33
  %37 = load i32, ptr %15, align 4, !llvm.access.group !40
  %38 = load i32, ptr %18, align 4, !llvm.access.group !40
  %39 = icmp sle i32 %37, %38
  br i1 %39, label %40, label %63

40:                                               ; preds = %36
  %41 = load i32, ptr %15, align 4, !llvm.access.group !40
  %42 = mul nsw i32 %41, 1
  %43 = add nsw i32 0, %42
  store i32 %43, ptr %21, align 4, !llvm.access.group !40
  %44 = load ptr, ptr %12, align 8, !llvm.access.group !40
  %45 = load ptr, ptr %13, align 8, !llvm.access.group !40
  %46 = load i32, ptr %21, align 4, !llvm.access.group !40
  %47 = sext i32 %46 to i64
  %48 = getelementptr inbounds i32, ptr %45, i64 %47
  %49 = load i32, ptr %48, align 4, !llvm.access.group !40
  %50 = mul nsw i32 %49, 16
  %51 = sext i32 %50 to i64
  %52 = getelementptr inbounds i32, ptr %44, i64 %51
  %53 = load ptr, ptr %14, align 8, !llvm.access.group !40
  %54 = load i32, ptr %21, align 4, !llvm.access.group !40
  %55 = sext i32 %54 to i64
  %56 = getelementptr inbounds i32, ptr %53, i64 %55
  %57 = load i32, ptr %56, align 4, !llvm.access.group !40
  %58 = atomicrmw add ptr %52, i32 %57 monotonic, align 4, !llvm.access.group !40
  br label %59

59:                                               ; preds = %40
  br label %60

60:                                               ; preds = %59
  %61 = load i32, ptr %15, align 4, !llvm.access.group !40
  %62 = add nsw i32 %61, 1
  store i32 %62, ptr %15, align 4, !llvm.access.group !40
  br label %36, !llvm.loop !41

63:                                               ; preds = %36
  br label %64

64:                                               ; preds = %63
  call void @__kmpc_for_static_fini(ptr @3, i32 %27)
  %65 = load i32, ptr %20, align 4
  %66 = icmp ne i32 %65, 0
  br i1 %66, label %67, label %68

67:                                               ; preds = %64
  store i32 33554432, ptr %21, align 4
  br label %68

68:                                               ; preds = %67, %64
  ret void
}

; Function Attrs: noinline uwtable
define internal void @_GLOBAL__sub_I_test_openmp.C() #0 section ".text.startup" {
  call void @__cxx_global_var_init()
  ret void
}

; Function Attrs: noinline uwtable
define internal void @.omp_offloading.requires_reg() #0 section ".text.startup" {
  call void @__tgt_register_requires(i64 1)
  ret void
}

; Function Attrs: nounwind
declare void @__tgt_register_requires(i64) #3

attributes #0 = { noinline uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { nounwind "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { nounwind }
attributes #4 = { mustprogress noinline norecurse optnone uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { mustprogress noinline nounwind optnone uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { nounwind allocsize(0) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { noinline norecurse nounwind optnone uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #8 = { nounwind readnone willreturn "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #9 = { noreturn nounwind "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #10 = { nounwind allocsize(0) }
attributes #11 = { nounwind readnone willreturn }
attributes #12 = { noreturn nounwind }

!omp_offload.info = !{!0, !1}
!llvm.module.flags = !{!2, !3, !4, !5, !6, !7}
!llvm.ident = !{!8}

!0 = !{i32 0, i32 66306, i32 74322520, !"main", i32 110, i32 0}
!1 = !{i32 0, i32 66306, i32 74322520, !"main", i32 143, i32 1}
!2 = !{i32 1, !"wchar_size", i32 4}
!3 = !{i32 7, !"openmp", i32 50}
!4 = !{i32 7, !"PIC Level", i32 2}
!5 = !{i32 7, !"PIE Level", i32 2}
!6 = !{i32 7, !"uwtable", i32 2}
!7 = !{i32 7, !"frame-pointer", i32 2}
!8 = !{!"clang version 15.0.0 (https://github.com/llvm/llvm-project.git 22c6e7b277fbe6c65216d8c7a690d53c8122cb42)"}
!9 = distinct !{!9, !10}
!10 = !{!"llvm.loop.mustprogress"}
!11 = distinct !{!11, !10}
!12 = distinct !{!12, !10}
!13 = distinct !{!13, !10}
!14 = distinct !{!14, !10}
!15 = distinct !{!15, !10}
!16 = distinct !{!16, !10}
!17 = distinct !{!17, !10}
!18 = distinct !{!18, !10}
!19 = distinct !{!19, !10}
!20 = distinct !{!20, !10}
!21 = distinct !{!21, !10}
!22 = distinct !{}
!23 = distinct !{!23, !24, !25}
!24 = !{!"llvm.loop.parallel_accesses", !22}
!25 = !{!"llvm.loop.vectorize.enable", i1 true}
!26 = !{!27}
!27 = !{i64 2, i64 -1, i64 -1, i1 true}
!28 = distinct !{}
!29 = distinct !{!29, !30, !25}
!30 = !{!"llvm.loop.parallel_accesses", !28}
!31 = distinct !{}
!32 = distinct !{!32, !33, !25}
!33 = !{!"llvm.loop.parallel_accesses", !31}
!34 = distinct !{}
!35 = distinct !{!35, !36, !25}
!36 = !{!"llvm.loop.parallel_accesses", !34}
!37 = distinct !{}
!38 = distinct !{!38, !39, !25}
!39 = !{!"llvm.loop.parallel_accesses", !37}
!40 = distinct !{}
!41 = distinct !{!41, !42, !25}
!42 = !{!"llvm.loop.parallel_accesses", !40}
