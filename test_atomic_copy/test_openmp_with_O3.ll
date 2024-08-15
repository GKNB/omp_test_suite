; ModuleID = '/tmp/test_openmp-90649e.bc'
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
%"class.std::ctype" = type <{ %"class.std::locale::facet.base", [4 x i8], ptr, i8, [7 x i8], ptr, ptr, ptr, i8, [256 x i8], [256 x i8], i8, [6 x i8] }>
%"class.std::locale::facet.base" = type <{ ptr, i32 }>

@_ZStL8__ioinit = internal global %"class.std::ios_base::Init" zeroinitializer, align 1
@__dso_handle = external hidden global i8
@_ZSt4cout = external global %"class.std::basic_ostream", align 8
@.str = private unnamed_addr constant [36 x i8] c"We are testing atomicAdd with type \00", align 1
@_ZTIi = external local_unnamed_addr constant ptr
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
@3 = private unnamed_addr constant %struct.ident_t { i32 0, i32 2050, i32 0, i32 22, ptr @0 }, align 8
@.__omp_offloading_10302_46e1258_main_l110.region_id = weak constant i8 0
@.offload_sizes.23 = private unnamed_addr constant [1 x i64] [i64 524288]
@.str.29 = private unnamed_addr constant [43 x i8] c"Error! res_d and res are different at i = \00", align 1
@.str.30 = private unnamed_addr constant [18 x i8] c" with res_d[i] = \00", align 1
@.str.31 = private unnamed_addr constant [61 x i8] c"0 && \22Error! Atomic update for Openmp GPU without rf fail\\n\22\00", align 1
@.str.32 = private unnamed_addr constant [48 x i8] c"Time for GPU openmp atomic without rf with N = \00", align 1
@.offload_maptypes.38 = private unnamed_addr constant [1 x i64] [i64 1]
@.__omp_offloading_10302_46e1258_main_l143.region_id = weak constant i8 0
@.offload_sizes.41 = private unnamed_addr constant [3 x i64] zeroinitializer
@.offload_maptypes.42 = private unnamed_addr constant [3 x i64] [i64 544, i64 544, i64 544]
@.offload_sizes.43 = private unnamed_addr constant [1 x i64] [i64 8388608]
@.offload_maptypes.44 = private unnamed_addr constant [1 x i64] [i64 2]
@.offload_sizes.47 = private unnamed_addr constant [1 x i64] [i64 134217728]
@.offload_maptypes.48 = private unnamed_addr constant [1 x i64] zeroinitializer
@.str.49 = private unnamed_addr constant [46 x i8] c"Error! res_d_rf and res are different at i = \00", align 1
@.str.50 = private unnamed_addr constant [24 x i8] c" with res_d_rf[i*rf] = \00", align 1
@.str.51 = private unnamed_addr constant [58 x i8] c"0 && \22Error! Atomic update for Openmp GPU with rf fail\\n\22\00", align 1
@.str.52 = private unnamed_addr constant [45 x i8] c"Time for GPU openmp atomic with rf with N = \00", align 1
@.omp_offloading.entry_name = internal unnamed_addr constant [41 x i8] c"__omp_offloading_10302_46e1258_main_l110\00"
@.omp_offloading.entry.__omp_offloading_10302_46e1258_main_l110 = weak local_unnamed_addr constant %struct.__tgt_offload_entry { ptr @.__omp_offloading_10302_46e1258_main_l110.region_id, ptr @.omp_offloading.entry_name, i64 0, i32 0, i32 0 }, section "omp_offloading_entries", align 1
@.omp_offloading.entry_name.53 = internal unnamed_addr constant [41 x i8] c"__omp_offloading_10302_46e1258_main_l143\00"
@.omp_offloading.entry.__omp_offloading_10302_46e1258_main_l143 = weak local_unnamed_addr constant %struct.__tgt_offload_entry { ptr @.__omp_offloading_10302_46e1258_main_l143.region_id, ptr @.omp_offloading.entry_name.53, i64 0, i32 0, i32 0 }, section "omp_offloading_entries", align 1
@llvm.global_ctors = appending global [2 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 65535, ptr @_GLOBAL__sub_I_test_openmp.C, ptr null }, { i32, ptr, ptr } { i32 0, ptr @.omp_offloading.requires_reg, ptr null }]
@llvm.embedded.object = private constant [17496 x i8] c"\10\FF\10\AD\01\00\00\00XD\00\00\00\00\00\00 \00\00\00\00\00\00\00(\00\00\00\00\00\00\00\00\00\01\00\00\00\00\00H\00\00\00\00\00\00\00\02\00\00\00\00\00\00\00\8F\00\00\00\00\00\00\00\C4C\00\00\00\00\00\00n\00\00\00\00\00\00\00u\00\00\00\00\00\00\00i\00\00\00\00\00\00\00\89\00\00\00\00\00\00\00\00arch\00triple\00nvptx64-nvidia-cuda\00sm_70\00; ModuleID = 'test_openmp.C'\0Asource_filename = \22test_openmp.C\22\0Atarget datalayout = \22e-i64:64-i128:128-v16:16-v32:32-n16:32:64\22\0Atarget triple = \22nvptx64-nvidia-cuda\22\0A\0A%struct.ident_t = type { i32, i32, i32, i32, ptr }\0A\0A@__omp_rtl_debug_kind = weak_odr hidden local_unnamed_addr constant i32 0\0A@__omp_rtl_assume_teams_oversubscription = weak_odr hidden local_unnamed_addr constant i32 0\0A@__omp_rtl_assume_threads_oversubscription = weak_odr hidden local_unnamed_addr constant i32 0\0A@__omp_rtl_assume_no_thread_state = weak_odr hidden local_unnamed_addr constant i32 0\0A@0 = private unnamed_addr constant [23 x i8] c\22;unknown;unknown;0;0;;\\00\22, align 1\0A@1 = private unnamed_addr constant %struct.ident_t { i32 0, i32 2, i32 0, i32 22, ptr @0 }, align 8\0A@2 = private unnamed_addr constant %struct.ident_t { i32 0, i32 2050, i32 3, i32 22, ptr @0 }, align 8\0A@3 = private unnamed_addr constant %struct.ident_t { i32 0, i32 514, i32 3, i32 22, ptr @0 }, align 8\0A@4 = private unnamed_addr constant %struct.ident_t { i32 0, i32 2, i32 3, i32 22, ptr @0 }, align 8\0A@__omp_offloading_10302_46e1258_main_l110_exec_mode = weak constant i8 2\0A@__omp_offloading_10302_46e1258_main_l143_exec_mode = weak constant i8 2\0A@llvm.compiler.used = appending global [2 x ptr] [ptr @__omp_offloading_10302_46e1258_main_l110_exec_mode, ptr @__omp_offloading_10302_46e1258_main_l143_exec_mode], section \22llvm.metadata\22\0A\0A; Function Attrs: alwaysinline norecurse nounwind\0Adefine weak_odr void @__omp_offloading_10302_46e1258_main_l110(ptr noundef %0, ptr noundef %1, ptr noundef %2) local_unnamed_addr #0 {\0A  %4 = alloca i32, align 4\0A  %5 = alloca i32, align 4\0A  %6 = alloca i32, align 4\0A  %7 = alloca i32, align 4\0A  %8 = alloca [5 x ptr], align 8\0A  %9 = tail call i32 @__kmpc_target_init(ptr nonnull @1, i8 2, i1 false, i1 false) #2\0A  %10 = icmp eq i32 %9, -1\0A  br i1 %10, label %12, label %11\0A\0A11:                                               ; preds = %3, %38\0A  ret void\0A\0A12:                                               ; preds = %3\0A  %13 = tail call i32 @__kmpc_global_thread_num(ptr nonnull @4) #2\0A  call void @llvm.lifetime.start.p0(i64 40, ptr nonnull %8)\0A  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %4) #2\0A  store i32 0, ptr %4, align 4, !tbaa !10\0A  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %5) #2\0A  store i32 33554431, ptr %5, align 4, !tbaa !10\0A  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %6) #2\0A  store i32 1, ptr %6, align 4, !tbaa !10\0A  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %7) #2\0A  store i32 0, ptr %7, align 4, !tbaa !10\0A  %14 = tail call i32 @__kmpc_get_hardware_num_threads_in_block() #2\0A  call void @__kmpc_distribute_static_init_4(ptr nonnull @2, i32 %13, i32 91, ptr nonnull %7, ptr nonnull %4, ptr nonnull %5, ptr nonnull %6, i32 1, i32 %14) #2\0A  %15 = load i32, ptr %5, align 4, !tbaa !10\0A  %16 = call i32 @llvm.smin.i32(i32 %15, i32 33554431) #2, !range !14\0A  store i32 %16, ptr %5, align 4, !tbaa !10\0A  %17 = load i32, ptr %4, align 4, !tbaa !10\0A  %18 = icmp slt i32 %17, 33554432\0A  br i1 %18, label %19, label %38\0A\0A19:                                               ; preds = %12\0A  %20 = getelementptr inbounds [5 x ptr], ptr %8, i64 0, i64 1\0A  %21 = getelementptr inbounds [5 x ptr], ptr %8, i64 0, i64 2\0A  %22 = getelementptr inbounds [5 x ptr], ptr %8, i64 0, i64 3\0A  %23 = getelementptr inbounds [5 x ptr], ptr %8, i64 0, i64 4\0A  br label %24\0A\0A24:                                               ; preds = %24, %19\0A  %25 = phi i32 [ %17, %19 ], [ %33, %24 ]\0A  %26 = phi i32 [ %16, %19 ], [ %36, %24 ]\0A  %27 = zext i32 %25 to i64\0A  %28 = zext i32 %26 to i64\0A  %29 = inttoptr i64 %27 to ptr\0A  store ptr %29, ptr %8, align 8, !tbaa !15, !llvm.access.group !17\0A  %30 = inttoptr i64 %28 to ptr\0A  store ptr %30, ptr %20, align 8, !tbaa !15, !llvm.access.group !17\0A  store ptr %0, ptr %21, align 8, !tbaa !15, !llvm.access.group !17\0A  store ptr %1, ptr %22, align 8, !tbaa !15, !llvm.access.group !17\0A  store ptr %2, ptr %23, align 8, !tbaa !15, !llvm.access.group !17\0A  call void @__kmpc_parallel_51(ptr nonnull @4, i32 %13, i32 1, i32 -1, i32 -1, ptr nonnull @__omp_outlined__1, ptr null, ptr nonnull %8, i64 5) #2, !llvm.access.group !17\0A  %31 = load i32, ptr %6, align 4, !tbaa !10, !llvm.access.group !17\0A  %32 = load i32, ptr %4, align 4, !tbaa !10, !llvm.access.group !17\0A  %33 = add nsw i32 %32, %31\0A  store i32 %33, ptr %4, align 4, !tbaa !10, !llvm.access.group !17\0A  %34 = load i32, ptr %5, align 4, !tbaa !10, !llvm.access.group !17\0A  %35 = add nsw i32 %34, %31\0A  %36 = call i32 @llvm.smin.i32(i32 %35, i32 33554431) #2, !range !14\0A  store i32 %36, ptr %5, align 4, !tbaa !10\0A  %37 = icmp slt i32 %33, 33554432\0A  br i1 %37, label %24, label %38, !llvm.loop !18\0A\0A38:                                               ; preds = %24, %12\0A  call void @__kmpc_distribute_static_fini(ptr nonnull @2, i32 %13) #2\0A  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %7) #2\0A  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %6) #2\0A  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %5) #2\0A  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %4) #2\0A  call void @llvm.lifetime.end.p0(i64 40, ptr nonnull %8)\0A  call void @__kmpc_target_deinit(ptr nonnull @1, i8 2, i1 false) #2\0A  br label %11\0A}\0A\0Adeclare i32 @__kmpc_target_init(ptr, i8, i1, i1) local_unnamed_addr\0A\0A; Function Attrs: argmemonly mustprogress nocallback nofree nosync nounwind willreturn\0Adeclare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1\0A\0A; Function Attrs: nounwind\0Adeclare i32 @__kmpc_get_hardware_num_threads_in_block() local_unnamed_addr #2\0A\0A; Function Attrs: nounwind\0Adeclare void @__kmpc_distribute_static_init_4(ptr, i32, i32, ptr, ptr, ptr, ptr, i32, i32) local_unnamed_addr #2\0A\0A; Function Attrs: alwaysinline norecurse nounwind\0Adefine internal void @__omp_outlined__1(ptr noalias nocapture noundef readonly %0, ptr noalias nocapture noundef readnone %1, i64 noundef %2, i64 noundef %3, ptr nocapture noundef %4, ptr nocapture noundef readonly %5, ptr nocapture noundef readonly %6) #3 {\0A  %8 = alloca i32, align 4\0A  %9 = alloca i32, align 4\0A  %10 = alloca i32, align 4\0A  %11 = alloca i32, align 4\0A  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %8) #2\0A  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %9) #2\0A  %12 = trunc i64 %2 to i32\0A  %13 = trunc i64 %3 to i32\0A  store i32 %12, ptr %8, align 4, !tbaa !10\0A  store i32 %13, ptr %9, align 4, !tbaa !10\0A  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %10) #2\0A  store i32 1, ptr %10, align 4, !tbaa !10\0A  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %11) #2\0A  store i32 0, ptr %11, align 4, !tbaa !10\0A  %14 = load i32, ptr %0, align 4, !tbaa !10\0A  call void @__kmpc_for_static_init_4(ptr nonnull @3, i32 %14, i32 33, ptr nonnull %11, ptr nonnull %8, ptr nonnull %9, ptr nonnull %10, i32 1, i32 1) #2\0A  %15 = load i32, ptr %8, align 4, !tbaa !10\0A  %16 = sext i32 %15 to i64\0A  %17 = icmp ugt i64 %16, %3\0A  br i1 %17, label %33, label %18\0A\0A18:                                               ; preds = %7\0A  %19 = load i32, ptr %10, align 4, !tbaa !10, !llvm.access.group !21\0A  br label %20\0A\0A20:                                               ; preds = %18, %20\0A  %21 = phi i64 [ %16, %18 ], [ %31, %20 ]\0A  %22 = trunc i64 %21 to i32\0A  %23 = getelementptr inbounds i32, ptr %5, i64 %21\0A  %24 = load i32, ptr %23, align 4, !tbaa !10, !llvm.access.group !21\0A  %25 = sext i32 %24 to i64\0A  %26 = getelementptr inbounds i32, ptr %4, i64 %25\0A  %27 = getelementptr inbounds i32, ptr %6, i64 %21\0A  %28 = load i32, ptr %27, align 4, !tbaa !10, !llvm.access.group !21\0A  %29 = atomicrmw add ptr %26, i32 %28 monotonic, align 4, !llvm.access.group !21\0A  %30 = add nsw i32 %19, %22\0A  %31 = sext i32 %30 to i64\0A  %32 = icmp ugt i64 %31, %3\0A  br i1 %32, label %33, label %20, !llvm.loop !22\0A\0A33:                                               ; preds = %20, %7\0A  call void @__kmpc_distribute_static_fini(ptr nonnull @2, i32 %14)\0A  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %11) #2\0A  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %10) #2\0A  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %9) #2\0A  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %8) #2\0A  ret void\0A}\0A\0A; Function Attrs: nounwind\0Adeclare void @__kmpc_for_static_init_4(ptr, i32, i32, ptr, ptr, ptr, ptr, i32, i32) local_unnamed_addr #2\0A\0A; Function Attrs: nounwind\0Adeclare void @__kmpc_distribute_static_fini(ptr, i32) local_unnamed_addr #2\0A\0A; Function Attrs: argmemonly mustprogress nocallback nofree nosync nounwind willreturn\0Adeclare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1\0A\0A; Function Attrs: alwaysinline\0Adeclare void @__kmpc_parallel_51(ptr, i32, i32, i32, i32, ptr, ptr, ptr, i64) local_unnamed_addr #4\0A\0A; Function Attrs: nounwind\0Adeclare i32 @__kmpc_global_thread_num(ptr) local_unnamed_addr #2\0A\0Adeclare void @__kmpc_target_deinit(ptr, i8, i1) local_unnamed_addr\0A\0A; Function Attrs: alwaysinline norecurse nounwind\0Adefine weak_odr void @__omp_offloading_10302_46e1258_main_l143(ptr noundef %0, ptr noundef %1, ptr noundef %2) local_unnamed_addr #0 {\0A  %4 = alloca i32, align 4\0A  %5 = alloca i32, align 4\0A  %6 = alloca i32, align 4\0A  %7 = alloca i32, align 4\0A  %8 = alloca [5 x ptr], align 8\0A  %9 = tail call i32 @__kmpc_target_init(ptr nonnull @1, i8 2, i1 false, i1 false) #2\0A  %10 = icmp eq i32 %9, -1\0A  br i1 %10, label %12, label %11\0A\0A11:                                               ; preds = %3, %38\0A  ret void\0A\0A12:                                               ; preds = %3\0A  %13 = tail call i32 @__kmpc_global_thread_num(ptr nonnull @4) #2\0A  call void @llvm.lifetime.start.p0(i64 40, ptr nonnull %8)\0A  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %4) #2\0A  store i32 0, ptr %4, align 4, !tbaa !10\0A  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %5) #2\0A  store i32 33554431, ptr %5, align 4, !tbaa !10\0A  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %6) #2\0A  store i32 1, ptr %6, align 4, !tbaa !10\0A  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %7) #2\0A  store i32 0, ptr %7, align 4, !tbaa !10\0A  %14 = tail call i32 @__kmpc_get_hardware_num_threads_in_block() #2\0A  call void @__kmpc_distribute_static_init_4(ptr nonnull @2, i32 %13, i32 91, ptr nonnull %7, ptr nonnull %4, ptr nonnull %5, ptr nonnull %6, i32 1, i32 %14) #2\0A  %15 = load i32, ptr %5, align 4, !tbaa !10\0A  %16 = call i32 @llvm.smin.i32(i32 %15, i32 33554431) #2, !range !14\0A  store i32 %16, ptr %5, align 4, !tbaa !10\0A  %17 = load i32, ptr %4, align 4, !tbaa !10\0A  %18 = icmp slt i32 %17, 33554432\0A  br i1 %18, label %19, label %38\0A\0A19:                                               ; preds = %12\0A  %20 = getelementptr inbounds [5 x ptr], ptr %8, i64 0, i64 1\0A  %21 = getelementptr inbounds [5 x ptr], ptr %8, i64 0, i64 2\0A  %22 = getelementptr inbounds [5 x ptr], ptr %8, i64 0, i64 3\0A  %23 = getelementptr inbounds [5 x ptr], ptr %8, i64 0, i64 4\0A  br label %24\0A\0A24:                                               ; preds = %24, %19\0A  %25 = phi i32 [ %17, %19 ], [ %33, %24 ]\0A  %26 = phi i32 [ %16, %19 ], [ %36, %24 ]\0A  %27 = zext i32 %25 to i64\0A  %28 = zext i32 %26 to i64\0A  %29 = inttoptr i64 %27 to ptr\0A  store ptr %29, ptr %8, align 8, !tbaa !15, !llvm.access.group !24\0A  %30 = inttoptr i64 %28 to ptr\0A  store ptr %30, ptr %20, align 8, !tbaa !15, !llvm.access.group !24\0A  store ptr %0, ptr %21, align 8, !tbaa !15, !llvm.access.group !24\0A  store ptr %1, ptr %22, align 8, !tbaa !15, !llvm.access.group !24\0A  store ptr %2, ptr %23, align 8, !tbaa !15, !llvm.access.group !24\0A  call void @__kmpc_parallel_51(ptr nonnull @4, i32 %13, i32 1, i32 -1, i32 -1, ptr nonnull @__omp_outlined__3, ptr null, ptr nonnull %8, i64 5) #2, !llvm.access.group !24\0A  %31 = load i32, ptr %6, align 4, !tbaa !10, !llvm.access.group !24\0A  %32 = load i32, ptr %4, align 4, !tbaa !10, !llvm.access.group !24\0A  %33 = add nsw i32 %32, %31\0A  store i32 %33, ptr %4, align 4, !tbaa !10, !llvm.access.group !24\0A  %34 = load i32, ptr %5, align 4, !tbaa !10, !llvm.access.group !24\0A  %35 = add nsw i32 %34, %31\0A  %36 = call i32 @llvm.smin.i32(i32 %35, i32 33554431) #2, !range !14\0A  store i32 %36, ptr %5, align 4, !tbaa !10\0A  %37 = icmp slt i32 %33, 33554432\0A  br i1 %37, label %24, label %38, !llvm.loop !25\0A\0A38:                                               ; preds = %24, %12\0A  call void @__kmpc_distribute_static_fini(ptr nonnull @2, i32 %13) #2\0A  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %7) #2\0A  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %6) #2\0A  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %5) #2\0A  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %4) #2\0A  call void @llvm.lifetime.end.p0(i64 40, ptr nonnull %8)\0A  call void @__kmpc_target_deinit(ptr nonnull @1, i8 2, i1 false) #2\0A  br label %11\0A}\0A\0A; Function Attrs: alwaysinline norecurse nounwind\0Adefine internal void @__omp_outlined__3(ptr noalias nocapture noundef readonly %0, ptr noalias nocapture noundef readnone %1, i64 noundef %2, i64 noundef %3, ptr nocapture noundef %4, ptr nocapture noundef readonly %5, ptr nocapture noundef readonly %6) #3 {\0A  %8 = alloca i32, align 4\0A  %9 = alloca i32, align 4\0A  %10 = alloca i32, align 4\0A  %11 = alloca i32, align 4\0A  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %8) #2\0A  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %9) #2\0A  %12 = trunc i64 %2 to i32\0A  %13 = trunc i64 %3 to i32\0A  store i32 %12, ptr %8, align 4, !tbaa !10\0A  store i32 %13, ptr %9, align 4, !tbaa !10\0A  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %10) #2\0A  store i32 1, ptr %10, align 4, !tbaa !10\0A  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %11) #2\0A  store i32 0, ptr %11, align 4, !tbaa !10\0A  %14 = load i32, ptr %0, align 4, !tbaa !10\0A  call void @__kmpc_for_static_init_4(ptr nonnull @3, i32 %14, i32 33, ptr nonnull %11, ptr nonnull %8, ptr nonnull %9, ptr nonnull %10, i32 1, i32 1) #2\0A  %15 = load i32, ptr %8, align 4, !tbaa !10\0A  %16 = sext i32 %15 to i64\0A  %17 = icmp ugt i64 %16, %3\0A  br i1 %17, label %34, label %18\0A\0A18:                                               ; preds = %7\0A  %19 = load i32, ptr %10, align 4, !tbaa !10, !llvm.access.group !27\0A  br label %20\0A\0A20:                                               ; preds = %18, %20\0A  %21 = phi i64 [ %16, %18 ], [ %32, %20 ]\0A  %22 = trunc i64 %21 to i32\0A  %23 = getelementptr inbounds i32, ptr %5, i64 %21\0A  %24 = load i32, ptr %23, align 4, !tbaa !10, !llvm.access.group !27\0A  %25 = shl nsw i32 %24, 4\0A  %26 = sext i32 %25 to i64\0A  %27 = getelementptr inbounds i32, ptr %4, i64 %26\0A  %28 = getelementptr inbounds i32, ptr %6, i64 %21\0A  %29 = load i32, ptr %28, align 4, !tbaa !10, !llvm.access.group !27\0A  %30 = atomicrmw add ptr %27, i32 %29 monotonic, align 4, !llvm.access.group !27\0A  %31 = add nsw i32 %19, %22\0A  %32 = sext i32 %31 to i64\0A  %33 = icmp ugt i64 %32, %3\0A  br i1 %33, label %34, label %20, !llvm.loop !28\0A\0A34:                                               ; preds = %20, %7\0A  call void @__kmpc_distribute_static_fini(ptr nonnull @2, i32 %14)\0A  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %11) #2\0A  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %10) #2\0A  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %9) #2\0A  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %8) #2\0A  ret void\0A}\0A\0A; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn\0Adeclare i32 @llvm.smin.i32(i32, i32) #5\0A\0Aattributes #0 = { alwaysinline norecurse nounwind \22frame-pointer\22=\22all\22 \22kernel\22 \22min-legal-vector-width\22=\220\22 \22no-trapping-math\22=\22true\22 \22stack-protector-buffer-size\22=\228\22 \22target-cpu\22=\22sm_70\22 \22target-features\22=\22+ptx72,+sm_70\22 }\0Aattributes #1 = { argmemonly mustprogress nocallback nofree nosync nounwind willreturn }\0Aattributes #2 = { nounwind }\0Aattributes #3 = { alwaysinline norecurse nounwind \22frame-pointer\22=\22all\22 \22min-legal-vector-width\22=\220\22 \22no-trapping-math\22=\22true\22 \22stack-protector-buffer-size\22=\228\22 \22target-cpu\22=\22sm_70\22 \22target-features\22=\22+ptx72,+sm_70\22 }\0Aattributes #4 = { alwaysinline }\0Aattributes #5 = { nocallback nofree nosync nounwind readnone speculatable willreturn }\0A\0A!omp_offload.info = !{!0, !1}\0A!nvvm.annotations = !{!2, !3}\0A!llvm.module.flags = !{!4, !5, !6, !7, !8}\0A!llvm.ident = !{!9}\0A\0A!0 = !{i32 0, i32 66306, i32 74322520, !\22main\22, i32 110, i32 0}\0A!1 = !{i32 0, i32 66306, i32 74322520, !\22main\22, i32 143, i32 1}\0A!2 = !{ptr @__omp_offloading_10302_46e1258_main_l110, !\22kernel\22, i32 1}\0A!3 = !{ptr @__omp_offloading_10302_46e1258_main_l143, !\22kernel\22, i32 1}\0A!4 = !{i32 1, !\22wchar_size\22, i32 4}\0A!5 = !{i32 7, !\22openmp\22, i32 50}\0A!6 = !{i32 7, !\22openmp-device\22, i32 50}\0A!7 = !{i32 7, !\22PIC Level\22, i32 2}\0A!8 = !{i32 7, !\22frame-pointer\22, i32 2}\0A!9 = !{!\22clang version 15.0.0 (https://github.com/llvm/llvm-project.git 22c6e7b277fbe6c65216d8c7a690d53c8122cb42)\22}\0A!10 = !{!11, !11, i64 0}\0A!11 = !{!\22int\22, !12, i64 0}\0A!12 = !{!\22omnipotent char\22, !13, i64 0}\0A!13 = !{!\22Simple C++ TBAA\22}\0A!14 = !{i32 -2147483648, i32 33554432}\0A!15 = !{!16, !16, i64 0}\0A!16 = !{!\22any pointer\22, !12, i64 0}\0A!17 = distinct !{}\0A!18 = distinct !{!18, !19, !20}\0A!19 = !{!\22llvm.loop.parallel_accesses\22, !17}\0A!20 = !{!\22llvm.loop.vectorize.enable\22, i1 true}\0A!21 = distinct !{}\0A!22 = distinct !{!22, !23, !20}\0A!23 = !{!\22llvm.loop.parallel_accesses\22, !21}\0A!24 = distinct !{}\0A!25 = distinct !{!25, !26, !20}\0A!26 = !{!\22llvm.loop.parallel_accesses\22, !24}\0A!27 = distinct !{}\0A!28 = distinct !{!28, !29, !20}\0A!29 = !{!\22llvm.loop.parallel_accesses\22, !27}\0A\00\00\00\00\00", section ".llvm.offloading", align 8
@llvm.compiler.used = appending global [1 x ptr] [ptr @llvm.embedded.object], section "llvm.metadata"

declare void @_ZNSt8ios_base4InitC1Ev(ptr noundef nonnull align 1 dereferenceable(1)) unnamed_addr #0

; Function Attrs: nounwind
declare void @_ZNSt8ios_base4InitD1Ev(ptr noundef nonnull align 1 dereferenceable(1)) unnamed_addr #1

; Function Attrs: nofree nounwind
declare i32 @__cxa_atexit(ptr, ptr, ptr) local_unnamed_addr #2

; Function Attrs: norecurse uwtable
define dso_local noundef i32 @main() local_unnamed_addr #3 {
  %1 = alloca ptr, align 8
  %2 = alloca ptr, align 8
  %3 = alloca ptr, align 8
  %4 = alloca ptr, align 8
  %5 = alloca [1 x ptr], align 8
  %6 = alloca [1 x ptr], align 8
  %7 = alloca [1 x ptr], align 8
  %8 = alloca [1 x ptr], align 8
  %9 = alloca [1 x ptr], align 8
  %10 = alloca [1 x ptr], align 8
  %11 = alloca [3 x ptr], align 8
  %12 = alloca [3 x ptr], align 8
  %13 = alloca [1 x ptr], align 8
  %14 = alloca [1 x ptr], align 8
  %15 = alloca [1 x ptr], align 8
  %16 = alloca [1 x ptr], align 8
  %17 = alloca [1 x ptr], align 8
  %18 = alloca [1 x ptr], align 8
  %19 = alloca [1 x ptr], align 8
  %20 = alloca [1 x ptr], align 8
  %21 = alloca [1 x ptr], align 8
  %22 = alloca [1 x ptr], align 8
  %23 = alloca [1 x ptr], align 8
  %24 = alloca [1 x ptr], align 8
  %25 = alloca [3 x ptr], align 8
  %26 = alloca [3 x ptr], align 8
  %27 = alloca [1 x ptr], align 8
  %28 = alloca [1 x ptr], align 8
  %29 = alloca [1 x ptr], align 8
  %30 = alloca [1 x ptr], align 8
  %31 = alloca [1 x ptr], align 8
  %32 = alloca [1 x ptr], align 8
  %33 = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) @_ZSt4cout, ptr noundef nonnull @.str, i64 noundef 35)
  %34 = load ptr, ptr getelementptr inbounds (ptr, ptr @_ZTIi, i64 1), align 8, !tbaa !8
  %35 = load i8, ptr %34, align 1, !tbaa !13
  %36 = icmp eq i8 %35, 42
  %.idx.i = zext i1 %36 to i64
  %37 = getelementptr i8, ptr %34, i64 %.idx.i
  %.not.i = icmp eq ptr %37, null
  br i1 %.not.i, label %38, label %46

38:                                               ; preds = %0
  %39 = load ptr, ptr @_ZSt4cout, align 8, !tbaa !14
  %40 = getelementptr i8, ptr %39, i64 -24
  %41 = load i64, ptr %40, align 8
  %42 = getelementptr inbounds i8, ptr @_ZSt4cout, i64 %41
  %43 = getelementptr inbounds %"class.std::ios_base", ptr %42, i64 0, i32 5
  %44 = load i32, ptr %43, align 8, !tbaa !16
  %45 = or i32 %44, 1
  tail call void @_ZNSt9basic_iosIcSt11char_traitsIcEE5clearESt12_Ios_Iostate(ptr noundef nonnull align 8 dereferenceable(264) %42, i32 noundef %45)
  br label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit

46:                                               ; preds = %0
  %47 = tail call i64 @strlen(ptr noundef nonnull dereferenceable(1) %37) #7
  %48 = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) @_ZSt4cout, ptr noundef nonnull %37, i64 noundef %47)
  br label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit: ; preds = %38, %46
  %49 = load ptr, ptr @_ZSt4cout, align 8, !tbaa !14
  %50 = getelementptr i8, ptr %49, i64 -24
  %51 = load i64, ptr %50, align 8
  %52 = getelementptr inbounds i8, ptr @_ZSt4cout, i64 %51
  %53 = getelementptr inbounds %"class.std::basic_ios", ptr %52, i64 0, i32 5
  %54 = load ptr, ptr %53, align 8, !tbaa !24
  %.not.i.i.i = icmp eq ptr %54, null
  br i1 %.not.i.i.i, label %55, label %_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i

55:                                               ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit
  tail call void @_ZSt16__throw_bad_castv() #15
  unreachable

_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i: ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit
  %56 = getelementptr inbounds %"class.std::ctype", ptr %54, i64 0, i32 8
  %57 = load i8, ptr %56, align 8, !tbaa !27
  %.not.i1.i.i = icmp eq i8 %57, 0
  br i1 %.not.i1.i.i, label %61, label %58

58:                                               ; preds = %_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i
  %59 = getelementptr inbounds %"class.std::ctype", ptr %54, i64 0, i32 9, i64 10
  %60 = load i8, ptr %59, align 1, !tbaa !13
  br label %_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_.exit

61:                                               ; preds = %_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i
  tail call void @_ZNKSt5ctypeIcE13_M_widen_initEv(ptr noundef nonnull align 8 dereferenceable(570) %54)
  %62 = load ptr, ptr %54, align 8, !tbaa !14
  %63 = getelementptr inbounds ptr, ptr %62, i64 6
  %64 = load ptr, ptr %63, align 8
  %65 = tail call noundef signext i8 %64(ptr noundef nonnull align 8 dereferenceable(570) %54, i8 noundef signext 10)
  br label %_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_.exit

_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_.exit: ; preds = %58, %61
  %.0.i.i.i = phi i8 [ %60, %58 ], [ %65, %61 ]
  %66 = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo3putEc(ptr noundef nonnull align 8 dereferenceable(8) @_ZSt4cout, i8 noundef signext %.0.i.i.i)
  %67 = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo5flushEv(ptr noundef nonnull align 8 dereferenceable(8) %66)
  tail call void @srand(i32 noundef 1234) #7
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %1) #7
  %68 = tail call noalias dereferenceable_or_null(134217728) ptr @malloc(i64 noundef 134217728) #16
  store ptr %68, ptr %1, align 8, !tbaa !29
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %2) #7
  %69 = tail call noalias dereferenceable_or_null(134217728) ptr @malloc(i64 noundef 134217728) #16
  store ptr %69, ptr %2, align 8, !tbaa !29
  br label %73

70:                                               ; preds = %73
  %calloc250 = call dereferenceable_or_null(524288) ptr @calloc(i64 1, i64 524288)
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %3) #7
  %calloc249 = call dereferenceable_or_null(524288) ptr @calloc(i64 1, i64 524288)
  store ptr %calloc249, ptr %3, align 8, !tbaa !29
  %calloc = call dereferenceable_or_null(524288) ptr @calloc(i64 1, i64 524288)
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %4) #7
  %71 = tail call noalias dereferenceable_or_null(8388608) ptr @malloc(i64 noundef 8388608) #16
  store ptr %71, ptr %4, align 8, !tbaa !29
  %72 = tail call noalias dereferenceable_or_null(8388608) ptr @malloc(i64 noundef 8388608) #16
  br label %81

73:                                               ; preds = %_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_.exit, %73
  %indvars.iv = phi i64 [ 0, %_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_.exit ], [ %indvars.iv.next, %73 ]
  %74 = tail call i32 @rand() #7
  %75 = srem i32 %74, 131072
  %76 = getelementptr inbounds i32, ptr %68, i64 %indvars.iv
  store i32 %75, ptr %76, align 4, !tbaa !30
  %77 = tail call i32 @rand() #7
  %78 = sdiv i32 %77, 2147483647
  %79 = getelementptr inbounds i32, ptr %69, i64 %indvars.iv
  store i32 %78, ptr %79, align 4, !tbaa !30
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1
  %exitcond.not = icmp eq i64 %indvars.iv.next, 33554432
  br i1 %exitcond.not, label %70, label %73, !llvm.loop !31

.preheader189:                                    ; preds = %81
  %80 = tail call double @omp_get_wtime()
  br label %361

81:                                               ; preds = %81, %70
  %indvars.iv224 = phi i64 [ 0, %70 ], [ %indvars.iv.next225.3, %81 ]
  %82 = shl nuw nsw i64 %indvars.iv224, 4
  %83 = getelementptr inbounds i32, ptr %72, i64 %82
  store i32 0, ptr %83, align 4, !tbaa !30
  %84 = getelementptr inbounds i32, ptr %71, i64 %82
  store i32 0, ptr %84, align 4, !tbaa !30
  %indvars.iv.next225 = shl i64 %indvars.iv224, 4
  %85 = or i64 %indvars.iv.next225, 16
  %86 = getelementptr inbounds i32, ptr %72, i64 %85
  store i32 0, ptr %86, align 4, !tbaa !30
  %87 = getelementptr inbounds i32, ptr %71, i64 %85
  store i32 0, ptr %87, align 4, !tbaa !30
  %indvars.iv.next225.1 = shl i64 %indvars.iv224, 4
  %88 = or i64 %indvars.iv.next225.1, 32
  %89 = getelementptr inbounds i32, ptr %72, i64 %88
  store i32 0, ptr %89, align 4, !tbaa !30
  %90 = getelementptr inbounds i32, ptr %71, i64 %88
  store i32 0, ptr %90, align 4, !tbaa !30
  %indvars.iv.next225.2 = shl i64 %indvars.iv224, 4
  %91 = or i64 %indvars.iv.next225.2, 48
  %92 = getelementptr inbounds i32, ptr %72, i64 %91
  store i32 0, ptr %92, align 4, !tbaa !30
  %93 = getelementptr inbounds i32, ptr %71, i64 %91
  store i32 0, ptr %93, align 4, !tbaa !30
  %indvars.iv.next225.3 = add nuw nsw i64 %indvars.iv224, 4
  %exitcond227.not.3 = icmp eq i64 %indvars.iv.next225.3, 131072
  br i1 %exitcond227.not.3, label %.preheader189, label %81, !llvm.loop !33

94:                                               ; preds = %343
  tail call void @_ZSt16__throw_bad_castv() #15
  unreachable

_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i145: ; preds = %343
  %95 = getelementptr inbounds %"class.std::ctype", ptr %360, i64 0, i32 8
  %96 = load i8, ptr %95, align 8, !tbaa !27
  %.not.i1.i.i144 = icmp eq i8 %96, 0
  br i1 %.not.i1.i.i144, label %100, label %97

97:                                               ; preds = %_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i145
  %98 = getelementptr inbounds %"class.std::ctype", ptr %360, i64 0, i32 9, i64 10
  %99 = load i8, ptr %98, align 1, !tbaa !13
  br label %_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_.exit147

100:                                              ; preds = %_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i145
  tail call void @_ZNKSt5ctypeIcE13_M_widen_initEv(ptr noundef nonnull align 8 dereferenceable(570) %360)
  %101 = load ptr, ptr %360, align 8, !tbaa !14
  %102 = getelementptr inbounds ptr, ptr %101, i64 6
  %103 = load ptr, ptr %102, align 8
  %104 = tail call noundef signext i8 %103(ptr noundef nonnull align 8 dereferenceable(570) %360, i8 noundef signext 10)
  br label %_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_.exit147

_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_.exit147: ; preds = %97, %100
  %.0.i.i.i146 = phi i8 [ %99, %97 ], [ %104, %100 ]
  %105 = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo3putEc(ptr noundef nonnull align 8 dereferenceable(8) %354, i8 noundef signext %.0.i.i.i146)
  %106 = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo5flushEv(ptr noundef nonnull align 8 dereferenceable(8) %105)
  %107 = call double @omp_get_wtime()
  %108 = fsub double 0.000000e+00, %107
  call void (ptr, i32, ptr, ...) @__kmpc_fork_call(ptr nonnull @2, i32 3, ptr nonnull @.omp_outlined., ptr nonnull %3, ptr nonnull %1, ptr nonnull %2)
  %109 = call double @omp_get_wtime()
  %110 = fadd double %108, %109
  %111 = call double @omp_get_wtime()
  %112 = fsub double %110, %111
  call void (ptr, i32, ptr, ...) @__kmpc_fork_call(ptr nonnull @2, i32 3, ptr nonnull @.omp_outlined., ptr nonnull %3, ptr nonnull %1, ptr nonnull %2)
  %113 = call double @omp_get_wtime()
  %114 = fadd double %112, %113
  %115 = call double @omp_get_wtime()
  %116 = fsub double %114, %115
  call void (ptr, i32, ptr, ...) @__kmpc_fork_call(ptr nonnull @2, i32 3, ptr nonnull @.omp_outlined., ptr nonnull %3, ptr nonnull %1, ptr nonnull %2)
  %117 = call double @omp_get_wtime()
  %118 = fadd double %116, %117
  %119 = call double @omp_get_wtime()
  %120 = fsub double %118, %119
  call void (ptr, i32, ptr, ...) @__kmpc_fork_call(ptr nonnull @2, i32 3, ptr nonnull @.omp_outlined., ptr nonnull %3, ptr nonnull %1, ptr nonnull %2)
  %121 = call double @omp_get_wtime()
  %122 = fadd double %120, %121
  %123 = call double @omp_get_wtime()
  %124 = fsub double %122, %123
  call void (ptr, i32, ptr, ...) @__kmpc_fork_call(ptr nonnull @2, i32 3, ptr nonnull @.omp_outlined., ptr nonnull %3, ptr nonnull %1, ptr nonnull %2)
  %125 = call double @omp_get_wtime()
  %126 = fadd double %124, %125
  %127 = call double @omp_get_wtime()
  %128 = fsub double %126, %127
  call void (ptr, i32, ptr, ...) @__kmpc_fork_call(ptr nonnull @2, i32 3, ptr nonnull @.omp_outlined., ptr nonnull %3, ptr nonnull %1, ptr nonnull %2)
  %129 = call double @omp_get_wtime()
  %130 = fadd double %128, %129
  %131 = call double @omp_get_wtime()
  %132 = fsub double %130, %131
  call void (ptr, i32, ptr, ...) @__kmpc_fork_call(ptr nonnull @2, i32 3, ptr nonnull @.omp_outlined., ptr nonnull %3, ptr nonnull %1, ptr nonnull %2)
  %133 = call double @omp_get_wtime()
  %134 = fadd double %132, %133
  %135 = call double @omp_get_wtime()
  %136 = fsub double %134, %135
  call void (ptr, i32, ptr, ...) @__kmpc_fork_call(ptr nonnull @2, i32 3, ptr nonnull @.omp_outlined., ptr nonnull %3, ptr nonnull %1, ptr nonnull %2)
  %137 = call double @omp_get_wtime()
  %138 = fadd double %136, %137
  %139 = call double @omp_get_wtime()
  %140 = fsub double %138, %139
  call void (ptr, i32, ptr, ...) @__kmpc_fork_call(ptr nonnull @2, i32 3, ptr nonnull @.omp_outlined., ptr nonnull %3, ptr nonnull %1, ptr nonnull %2)
  %141 = call double @omp_get_wtime()
  %142 = fadd double %140, %141
  %143 = call double @omp_get_wtime()
  %144 = fsub double %142, %143
  call void (ptr, i32, ptr, ...) @__kmpc_fork_call(ptr nonnull @2, i32 3, ptr nonnull @.omp_outlined., ptr nonnull %3, ptr nonnull %1, ptr nonnull %2)
  %145 = call double @omp_get_wtime()
  %146 = fadd double %144, %145
  br label %380

147:                                              ; preds = %361
  %148 = tail call double @omp_get_wtime()
  %149 = tail call double @omp_get_wtime()
  br label %150

150:                                              ; preds = %150, %147
  %indvars.iv228.1 = phi i64 [ 0, %147 ], [ %indvars.iv.next229.1.1, %150 ]
  %151 = getelementptr inbounds i32, ptr %69, i64 %indvars.iv228.1
  %152 = load i32, ptr %151, align 4, !tbaa !30
  %153 = getelementptr inbounds i32, ptr %68, i64 %indvars.iv228.1
  %154 = load i32, ptr %153, align 4, !tbaa !30
  %155 = sext i32 %154 to i64
  %156 = getelementptr inbounds i32, ptr %calloc250, i64 %155
  %157 = load i32, ptr %156, align 4, !tbaa !30
  %158 = add nsw i32 %157, %152
  store i32 %158, ptr %156, align 4, !tbaa !30
  %indvars.iv.next229.1 = or i64 %indvars.iv228.1, 1
  %159 = getelementptr inbounds i32, ptr %69, i64 %indvars.iv.next229.1
  %160 = load i32, ptr %159, align 4, !tbaa !30
  %161 = getelementptr inbounds i32, ptr %68, i64 %indvars.iv.next229.1
  %162 = load i32, ptr %161, align 4, !tbaa !30
  %163 = sext i32 %162 to i64
  %164 = getelementptr inbounds i32, ptr %calloc250, i64 %163
  %165 = load i32, ptr %164, align 4, !tbaa !30
  %166 = add nsw i32 %165, %160
  store i32 %166, ptr %164, align 4, !tbaa !30
  %indvars.iv.next229.1.1 = add nuw nsw i64 %indvars.iv228.1, 2
  %exitcond231.1.not.1 = icmp eq i64 %indvars.iv.next229.1.1, 33554432
  br i1 %exitcond231.1.not.1, label %167, label %150, !llvm.loop !34

167:                                              ; preds = %150
  %168 = fsub double 0.000000e+00, %80
  %169 = fadd double %168, %148
  %170 = tail call double @omp_get_wtime()
  %171 = tail call double @omp_get_wtime()
  br label %172

172:                                              ; preds = %172, %167
  %indvars.iv228.2 = phi i64 [ 0, %167 ], [ %indvars.iv.next229.2.1, %172 ]
  %173 = getelementptr inbounds i32, ptr %69, i64 %indvars.iv228.2
  %174 = load i32, ptr %173, align 4, !tbaa !30
  %175 = getelementptr inbounds i32, ptr %68, i64 %indvars.iv228.2
  %176 = load i32, ptr %175, align 4, !tbaa !30
  %177 = sext i32 %176 to i64
  %178 = getelementptr inbounds i32, ptr %calloc250, i64 %177
  %179 = load i32, ptr %178, align 4, !tbaa !30
  %180 = add nsw i32 %179, %174
  store i32 %180, ptr %178, align 4, !tbaa !30
  %indvars.iv.next229.2 = or i64 %indvars.iv228.2, 1
  %181 = getelementptr inbounds i32, ptr %69, i64 %indvars.iv.next229.2
  %182 = load i32, ptr %181, align 4, !tbaa !30
  %183 = getelementptr inbounds i32, ptr %68, i64 %indvars.iv.next229.2
  %184 = load i32, ptr %183, align 4, !tbaa !30
  %185 = sext i32 %184 to i64
  %186 = getelementptr inbounds i32, ptr %calloc250, i64 %185
  %187 = load i32, ptr %186, align 4, !tbaa !30
  %188 = add nsw i32 %187, %182
  store i32 %188, ptr %186, align 4, !tbaa !30
  %indvars.iv.next229.2.1 = add nuw nsw i64 %indvars.iv228.2, 2
  %exitcond231.2.not.1 = icmp eq i64 %indvars.iv.next229.2.1, 33554432
  br i1 %exitcond231.2.not.1, label %189, label %172, !llvm.loop !34

189:                                              ; preds = %172
  %190 = fsub double %169, %149
  %191 = fadd double %190, %170
  %192 = tail call double @omp_get_wtime()
  %193 = tail call double @omp_get_wtime()
  br label %194

194:                                              ; preds = %194, %189
  %indvars.iv228.3 = phi i64 [ 0, %189 ], [ %indvars.iv.next229.3.1, %194 ]
  %195 = getelementptr inbounds i32, ptr %69, i64 %indvars.iv228.3
  %196 = load i32, ptr %195, align 4, !tbaa !30
  %197 = getelementptr inbounds i32, ptr %68, i64 %indvars.iv228.3
  %198 = load i32, ptr %197, align 4, !tbaa !30
  %199 = sext i32 %198 to i64
  %200 = getelementptr inbounds i32, ptr %calloc250, i64 %199
  %201 = load i32, ptr %200, align 4, !tbaa !30
  %202 = add nsw i32 %201, %196
  store i32 %202, ptr %200, align 4, !tbaa !30
  %indvars.iv.next229.3 = or i64 %indvars.iv228.3, 1
  %203 = getelementptr inbounds i32, ptr %69, i64 %indvars.iv.next229.3
  %204 = load i32, ptr %203, align 4, !tbaa !30
  %205 = getelementptr inbounds i32, ptr %68, i64 %indvars.iv.next229.3
  %206 = load i32, ptr %205, align 4, !tbaa !30
  %207 = sext i32 %206 to i64
  %208 = getelementptr inbounds i32, ptr %calloc250, i64 %207
  %209 = load i32, ptr %208, align 4, !tbaa !30
  %210 = add nsw i32 %209, %204
  store i32 %210, ptr %208, align 4, !tbaa !30
  %indvars.iv.next229.3.1 = add nuw nsw i64 %indvars.iv228.3, 2
  %exitcond231.3.not.1 = icmp eq i64 %indvars.iv.next229.3.1, 33554432
  br i1 %exitcond231.3.not.1, label %211, label %194, !llvm.loop !34

211:                                              ; preds = %194
  %212 = fsub double %191, %171
  %213 = fadd double %212, %192
  %214 = tail call double @omp_get_wtime()
  %215 = tail call double @omp_get_wtime()
  br label %216

216:                                              ; preds = %216, %211
  %indvars.iv228.4 = phi i64 [ 0, %211 ], [ %indvars.iv.next229.4.1, %216 ]
  %217 = getelementptr inbounds i32, ptr %69, i64 %indvars.iv228.4
  %218 = load i32, ptr %217, align 4, !tbaa !30
  %219 = getelementptr inbounds i32, ptr %68, i64 %indvars.iv228.4
  %220 = load i32, ptr %219, align 4, !tbaa !30
  %221 = sext i32 %220 to i64
  %222 = getelementptr inbounds i32, ptr %calloc250, i64 %221
  %223 = load i32, ptr %222, align 4, !tbaa !30
  %224 = add nsw i32 %223, %218
  store i32 %224, ptr %222, align 4, !tbaa !30
  %indvars.iv.next229.4 = or i64 %indvars.iv228.4, 1
  %225 = getelementptr inbounds i32, ptr %69, i64 %indvars.iv.next229.4
  %226 = load i32, ptr %225, align 4, !tbaa !30
  %227 = getelementptr inbounds i32, ptr %68, i64 %indvars.iv.next229.4
  %228 = load i32, ptr %227, align 4, !tbaa !30
  %229 = sext i32 %228 to i64
  %230 = getelementptr inbounds i32, ptr %calloc250, i64 %229
  %231 = load i32, ptr %230, align 4, !tbaa !30
  %232 = add nsw i32 %231, %226
  store i32 %232, ptr %230, align 4, !tbaa !30
  %indvars.iv.next229.4.1 = add nuw nsw i64 %indvars.iv228.4, 2
  %exitcond231.4.not.1 = icmp eq i64 %indvars.iv.next229.4.1, 33554432
  br i1 %exitcond231.4.not.1, label %233, label %216, !llvm.loop !34

233:                                              ; preds = %216
  %234 = fsub double %213, %193
  %235 = fadd double %234, %214
  %236 = tail call double @omp_get_wtime()
  %237 = tail call double @omp_get_wtime()
  br label %238

238:                                              ; preds = %238, %233
  %indvars.iv228.5 = phi i64 [ 0, %233 ], [ %indvars.iv.next229.5.1, %238 ]
  %239 = getelementptr inbounds i32, ptr %69, i64 %indvars.iv228.5
  %240 = load i32, ptr %239, align 4, !tbaa !30
  %241 = getelementptr inbounds i32, ptr %68, i64 %indvars.iv228.5
  %242 = load i32, ptr %241, align 4, !tbaa !30
  %243 = sext i32 %242 to i64
  %244 = getelementptr inbounds i32, ptr %calloc250, i64 %243
  %245 = load i32, ptr %244, align 4, !tbaa !30
  %246 = add nsw i32 %245, %240
  store i32 %246, ptr %244, align 4, !tbaa !30
  %indvars.iv.next229.5 = or i64 %indvars.iv228.5, 1
  %247 = getelementptr inbounds i32, ptr %69, i64 %indvars.iv.next229.5
  %248 = load i32, ptr %247, align 4, !tbaa !30
  %249 = getelementptr inbounds i32, ptr %68, i64 %indvars.iv.next229.5
  %250 = load i32, ptr %249, align 4, !tbaa !30
  %251 = sext i32 %250 to i64
  %252 = getelementptr inbounds i32, ptr %calloc250, i64 %251
  %253 = load i32, ptr %252, align 4, !tbaa !30
  %254 = add nsw i32 %253, %248
  store i32 %254, ptr %252, align 4, !tbaa !30
  %indvars.iv.next229.5.1 = add nuw nsw i64 %indvars.iv228.5, 2
  %exitcond231.5.not.1 = icmp eq i64 %indvars.iv.next229.5.1, 33554432
  br i1 %exitcond231.5.not.1, label %255, label %238, !llvm.loop !34

255:                                              ; preds = %238
  %256 = fsub double %235, %215
  %257 = fadd double %256, %236
  %258 = tail call double @omp_get_wtime()
  %259 = tail call double @omp_get_wtime()
  br label %260

260:                                              ; preds = %260, %255
  %indvars.iv228.6 = phi i64 [ 0, %255 ], [ %indvars.iv.next229.6.1, %260 ]
  %261 = getelementptr inbounds i32, ptr %69, i64 %indvars.iv228.6
  %262 = load i32, ptr %261, align 4, !tbaa !30
  %263 = getelementptr inbounds i32, ptr %68, i64 %indvars.iv228.6
  %264 = load i32, ptr %263, align 4, !tbaa !30
  %265 = sext i32 %264 to i64
  %266 = getelementptr inbounds i32, ptr %calloc250, i64 %265
  %267 = load i32, ptr %266, align 4, !tbaa !30
  %268 = add nsw i32 %267, %262
  store i32 %268, ptr %266, align 4, !tbaa !30
  %indvars.iv.next229.6 = or i64 %indvars.iv228.6, 1
  %269 = getelementptr inbounds i32, ptr %69, i64 %indvars.iv.next229.6
  %270 = load i32, ptr %269, align 4, !tbaa !30
  %271 = getelementptr inbounds i32, ptr %68, i64 %indvars.iv.next229.6
  %272 = load i32, ptr %271, align 4, !tbaa !30
  %273 = sext i32 %272 to i64
  %274 = getelementptr inbounds i32, ptr %calloc250, i64 %273
  %275 = load i32, ptr %274, align 4, !tbaa !30
  %276 = add nsw i32 %275, %270
  store i32 %276, ptr %274, align 4, !tbaa !30
  %indvars.iv.next229.6.1 = add nuw nsw i64 %indvars.iv228.6, 2
  %exitcond231.6.not.1 = icmp eq i64 %indvars.iv.next229.6.1, 33554432
  br i1 %exitcond231.6.not.1, label %277, label %260, !llvm.loop !34

277:                                              ; preds = %260
  %278 = fsub double %257, %237
  %279 = fadd double %278, %258
  %280 = tail call double @omp_get_wtime()
  %281 = tail call double @omp_get_wtime()
  br label %282

282:                                              ; preds = %282, %277
  %indvars.iv228.7 = phi i64 [ 0, %277 ], [ %indvars.iv.next229.7.1, %282 ]
  %283 = getelementptr inbounds i32, ptr %69, i64 %indvars.iv228.7
  %284 = load i32, ptr %283, align 4, !tbaa !30
  %285 = getelementptr inbounds i32, ptr %68, i64 %indvars.iv228.7
  %286 = load i32, ptr %285, align 4, !tbaa !30
  %287 = sext i32 %286 to i64
  %288 = getelementptr inbounds i32, ptr %calloc250, i64 %287
  %289 = load i32, ptr %288, align 4, !tbaa !30
  %290 = add nsw i32 %289, %284
  store i32 %290, ptr %288, align 4, !tbaa !30
  %indvars.iv.next229.7 = or i64 %indvars.iv228.7, 1
  %291 = getelementptr inbounds i32, ptr %69, i64 %indvars.iv.next229.7
  %292 = load i32, ptr %291, align 4, !tbaa !30
  %293 = getelementptr inbounds i32, ptr %68, i64 %indvars.iv.next229.7
  %294 = load i32, ptr %293, align 4, !tbaa !30
  %295 = sext i32 %294 to i64
  %296 = getelementptr inbounds i32, ptr %calloc250, i64 %295
  %297 = load i32, ptr %296, align 4, !tbaa !30
  %298 = add nsw i32 %297, %292
  store i32 %298, ptr %296, align 4, !tbaa !30
  %indvars.iv.next229.7.1 = add nuw nsw i64 %indvars.iv228.7, 2
  %exitcond231.7.not.1 = icmp eq i64 %indvars.iv.next229.7.1, 33554432
  br i1 %exitcond231.7.not.1, label %299, label %282, !llvm.loop !34

299:                                              ; preds = %282
  %300 = fsub double %279, %259
  %301 = fadd double %300, %280
  %302 = tail call double @omp_get_wtime()
  %303 = tail call double @omp_get_wtime()
  br label %304

304:                                              ; preds = %304, %299
  %indvars.iv228.8 = phi i64 [ 0, %299 ], [ %indvars.iv.next229.8.1, %304 ]
  %305 = getelementptr inbounds i32, ptr %69, i64 %indvars.iv228.8
  %306 = load i32, ptr %305, align 4, !tbaa !30
  %307 = getelementptr inbounds i32, ptr %68, i64 %indvars.iv228.8
  %308 = load i32, ptr %307, align 4, !tbaa !30
  %309 = sext i32 %308 to i64
  %310 = getelementptr inbounds i32, ptr %calloc250, i64 %309
  %311 = load i32, ptr %310, align 4, !tbaa !30
  %312 = add nsw i32 %311, %306
  store i32 %312, ptr %310, align 4, !tbaa !30
  %indvars.iv.next229.8 = or i64 %indvars.iv228.8, 1
  %313 = getelementptr inbounds i32, ptr %69, i64 %indvars.iv.next229.8
  %314 = load i32, ptr %313, align 4, !tbaa !30
  %315 = getelementptr inbounds i32, ptr %68, i64 %indvars.iv.next229.8
  %316 = load i32, ptr %315, align 4, !tbaa !30
  %317 = sext i32 %316 to i64
  %318 = getelementptr inbounds i32, ptr %calloc250, i64 %317
  %319 = load i32, ptr %318, align 4, !tbaa !30
  %320 = add nsw i32 %319, %314
  store i32 %320, ptr %318, align 4, !tbaa !30
  %indvars.iv.next229.8.1 = add nuw nsw i64 %indvars.iv228.8, 2
  %exitcond231.8.not.1 = icmp eq i64 %indvars.iv.next229.8.1, 33554432
  br i1 %exitcond231.8.not.1, label %321, label %304, !llvm.loop !34

321:                                              ; preds = %304
  %322 = fsub double %301, %281
  %323 = fadd double %322, %302
  %324 = tail call double @omp_get_wtime()
  %325 = tail call double @omp_get_wtime()
  br label %326

326:                                              ; preds = %326, %321
  %indvars.iv228.9 = phi i64 [ 0, %321 ], [ %indvars.iv.next229.9.1, %326 ]
  %327 = getelementptr inbounds i32, ptr %69, i64 %indvars.iv228.9
  %328 = load i32, ptr %327, align 4, !tbaa !30
  %329 = getelementptr inbounds i32, ptr %68, i64 %indvars.iv228.9
  %330 = load i32, ptr %329, align 4, !tbaa !30
  %331 = sext i32 %330 to i64
  %332 = getelementptr inbounds i32, ptr %calloc250, i64 %331
  %333 = load i32, ptr %332, align 4, !tbaa !30
  %334 = add nsw i32 %333, %328
  store i32 %334, ptr %332, align 4, !tbaa !30
  %indvars.iv.next229.9 = or i64 %indvars.iv228.9, 1
  %335 = getelementptr inbounds i32, ptr %69, i64 %indvars.iv.next229.9
  %336 = load i32, ptr %335, align 4, !tbaa !30
  %337 = getelementptr inbounds i32, ptr %68, i64 %indvars.iv.next229.9
  %338 = load i32, ptr %337, align 4, !tbaa !30
  %339 = sext i32 %338 to i64
  %340 = getelementptr inbounds i32, ptr %calloc250, i64 %339
  %341 = load i32, ptr %340, align 4, !tbaa !30
  %342 = add nsw i32 %341, %336
  store i32 %342, ptr %340, align 4, !tbaa !30
  %indvars.iv.next229.9.1 = add nuw nsw i64 %indvars.iv228.9, 2
  %exitcond231.9.not.1 = icmp eq i64 %indvars.iv.next229.9.1, 33554432
  br i1 %exitcond231.9.not.1, label %343, label %326, !llvm.loop !34

343:                                              ; preds = %326
  %344 = fsub double %323, %303
  %345 = fadd double %344, %324
  %346 = fsub double %345, %325
  %347 = tail call double @omp_get_wtime()
  %348 = fadd double %346, %347
  %349 = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) @_ZSt4cout, ptr noundef nonnull @.str.1, i64 noundef 25)
  %350 = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSolsEi(ptr noundef nonnull align 8 dereferenceable(8) @_ZSt4cout, i32 noundef 33554432)
  %351 = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %350, ptr noundef nonnull @.str.2, i64 noundef 11)
  %352 = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSolsEi(ptr noundef nonnull align 8 dereferenceable(8) %350, i32 noundef 131072)
  %353 = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %352, ptr noundef nonnull @.str.3, i64 noundef 4)
  %354 = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo9_M_insertIdEERSoT_(ptr noundef nonnull align 8 dereferenceable(8) %352, double noundef %348)
  %355 = load ptr, ptr %354, align 8, !tbaa !14
  %356 = getelementptr i8, ptr %355, i64 -24
  %357 = load i64, ptr %356, align 8
  %358 = getelementptr inbounds i8, ptr %354, i64 %357
  %359 = getelementptr inbounds %"class.std::basic_ios", ptr %358, i64 0, i32 5
  %360 = load ptr, ptr %359, align 8, !tbaa !24
  %.not.i.i.i143 = icmp eq ptr %360, null
  br i1 %.not.i.i.i143, label %94, label %_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i145

361:                                              ; preds = %361, %.preheader189
  %indvars.iv228 = phi i64 [ 0, %.preheader189 ], [ %indvars.iv.next229.1255, %361 ]
  %362 = getelementptr inbounds i32, ptr %69, i64 %indvars.iv228
  %363 = load i32, ptr %362, align 4, !tbaa !30
  %364 = getelementptr inbounds i32, ptr %68, i64 %indvars.iv228
  %365 = load i32, ptr %364, align 4, !tbaa !30
  %366 = sext i32 %365 to i64
  %367 = getelementptr inbounds i32, ptr %calloc250, i64 %366
  %368 = load i32, ptr %367, align 4, !tbaa !30
  %369 = add nsw i32 %368, %363
  store i32 %369, ptr %367, align 4, !tbaa !30
  %indvars.iv.next229 = or i64 %indvars.iv228, 1
  %370 = getelementptr inbounds i32, ptr %69, i64 %indvars.iv.next229
  %371 = load i32, ptr %370, align 4, !tbaa !30
  %372 = getelementptr inbounds i32, ptr %68, i64 %indvars.iv.next229
  %373 = load i32, ptr %372, align 4, !tbaa !30
  %374 = sext i32 %373 to i64
  %375 = getelementptr inbounds i32, ptr %calloc250, i64 %374
  %376 = load i32, ptr %375, align 4, !tbaa !30
  %377 = add nsw i32 %376, %371
  store i32 %377, ptr %375, align 4, !tbaa !30
  %indvars.iv.next229.1255 = add nuw nsw i64 %indvars.iv228, 2
  %exitcond231.not.1 = icmp eq i64 %indvars.iv.next229.1255, 33554432
  br i1 %exitcond231.not.1, label %147, label %361, !llvm.loop !34

378:                                              ; preds = %416
  %379 = and i8 %.1125, 1
  %.not = icmp eq i8 %379, 0
  br i1 %.not, label %418, label %417

380:                                              ; preds = %_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_.exit147, %416
  %indvars.iv234 = phi i64 [ 0, %_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_.exit147 ], [ %indvars.iv.next235, %416 ]
  %.0124203 = phi i8 [ 0, %_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_.exit147 ], [ %.1125, %416 ]
  %381 = load ptr, ptr %3, align 8, !tbaa !29
  %382 = getelementptr inbounds i32, ptr %381, i64 %indvars.iv234
  %383 = load i32, ptr %382, align 4, !tbaa !30
  %384 = getelementptr inbounds i32, ptr %calloc250, i64 %indvars.iv234
  %385 = load i32, ptr %384, align 4, !tbaa !30
  %.not142 = icmp eq i32 %383, %385
  br i1 %.not142, label %416, label %386

386:                                              ; preds = %380
  %387 = call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) @_ZSt4cout, ptr noundef nonnull @.str.4, i64 noundef 42)
  %388 = trunc i64 %indvars.iv234 to i32
  %389 = call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSolsEi(ptr noundef nonnull align 8 dereferenceable(8) @_ZSt4cout, i32 noundef %388)
  %390 = call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %389, ptr noundef nonnull @.str.5, i64 noundef 17)
  %391 = load ptr, ptr %3, align 8, !tbaa !29
  %392 = getelementptr inbounds i32, ptr %391, i64 %indvars.iv234
  %393 = load i32, ptr %392, align 4, !tbaa !30
  %394 = call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSolsEi(ptr noundef nonnull align 8 dereferenceable(8) %389, i32 noundef %393)
  %395 = call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %394, ptr noundef nonnull @.str.6, i64 noundef 14)
  %396 = call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSolsEi(ptr noundef nonnull align 8 dereferenceable(8) %394, i32 noundef %385)
  %397 = load ptr, ptr %396, align 8, !tbaa !14
  %398 = getelementptr i8, ptr %397, i64 -24
  %399 = load i64, ptr %398, align 8
  %400 = getelementptr inbounds i8, ptr %396, i64 %399
  %401 = getelementptr inbounds %"class.std::basic_ios", ptr %400, i64 0, i32 5
  %402 = load ptr, ptr %401, align 8, !tbaa !24
  %.not.i.i.i148 = icmp eq ptr %402, null
  br i1 %.not.i.i.i148, label %403, label %_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i150

403:                                              ; preds = %386
  call void @_ZSt16__throw_bad_castv() #15
  unreachable

_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i150: ; preds = %386
  %404 = getelementptr inbounds %"class.std::ctype", ptr %402, i64 0, i32 8
  %405 = load i8, ptr %404, align 8, !tbaa !27
  %.not.i1.i.i149 = icmp eq i8 %405, 0
  br i1 %.not.i1.i.i149, label %409, label %406

406:                                              ; preds = %_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i150
  %407 = getelementptr inbounds %"class.std::ctype", ptr %402, i64 0, i32 9, i64 10
  %408 = load i8, ptr %407, align 1, !tbaa !13
  br label %_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_.exit152

409:                                              ; preds = %_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i150
  call void @_ZNKSt5ctypeIcE13_M_widen_initEv(ptr noundef nonnull align 8 dereferenceable(570) %402)
  %410 = load ptr, ptr %402, align 8, !tbaa !14
  %411 = getelementptr inbounds ptr, ptr %410, i64 6
  %412 = load ptr, ptr %411, align 8
  %413 = call noundef signext i8 %412(ptr noundef nonnull align 8 dereferenceable(570) %402, i8 noundef signext 10)
  br label %_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_.exit152

_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_.exit152: ; preds = %406, %409
  %.0.i.i.i151 = phi i8 [ %408, %406 ], [ %413, %409 ]
  %414 = call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo3putEc(ptr noundef nonnull align 8 dereferenceable(8) %396, i8 noundef signext %.0.i.i.i151)
  %415 = call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo5flushEv(ptr noundef nonnull align 8 dereferenceable(8) %414)
  br label %416

416:                                              ; preds = %380, %_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_.exit152
  %.1125 = phi i8 [ 1, %_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_.exit152 ], [ %.0124203, %380 ]
  %indvars.iv.next235 = add nuw nsw i64 %indvars.iv234, 1
  %exitcond236.not = icmp eq i64 %indvars.iv.next235, 131072
  br i1 %exitcond236.not, label %378, label %380, !llvm.loop !35

417:                                              ; preds = %378
  call void @__assert_fail(ptr noundef nonnull @.str.7, ptr noundef nonnull @.str.8, i32 noundef 70, ptr noundef nonnull @__PRETTY_FUNCTION__.main) #17
  unreachable

418:                                              ; preds = %378
  %419 = call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) @_ZSt4cout, ptr noundef nonnull @.str.9, i64 noundef 47)
  %420 = call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSolsEi(ptr noundef nonnull align 8 dereferenceable(8) @_ZSt4cout, i32 noundef 33554432)
  %421 = call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %420, ptr noundef nonnull @.str.2, i64 noundef 11)
  %422 = call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSolsEi(ptr noundef nonnull align 8 dereferenceable(8) %420, i32 noundef 131072)
  %423 = call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %422, ptr noundef nonnull @.str.3, i64 noundef 4)
  %424 = call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo9_M_insertIdEERSoT_(ptr noundef nonnull align 8 dereferenceable(8) %422, double noundef %146)
  %425 = load ptr, ptr %424, align 8, !tbaa !14
  %426 = getelementptr i8, ptr %425, i64 -24
  %427 = load i64, ptr %426, align 8
  %428 = getelementptr inbounds i8, ptr %424, i64 %427
  %429 = getelementptr inbounds %"class.std::basic_ios", ptr %428, i64 0, i32 5
  %430 = load ptr, ptr %429, align 8, !tbaa !24
  %.not.i.i.i153 = icmp eq ptr %430, null
  br i1 %.not.i.i.i153, label %431, label %_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i155

431:                                              ; preds = %418
  call void @_ZSt16__throw_bad_castv() #15
  unreachable

_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i155: ; preds = %418
  %432 = getelementptr inbounds %"class.std::ctype", ptr %430, i64 0, i32 8
  %433 = load i8, ptr %432, align 8, !tbaa !27
  %.not.i1.i.i154 = icmp eq i8 %433, 0
  br i1 %.not.i1.i.i154, label %437, label %434

434:                                              ; preds = %_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i155
  %435 = getelementptr inbounds %"class.std::ctype", ptr %430, i64 0, i32 9, i64 10
  %436 = load i8, ptr %435, align 1, !tbaa !13
  br label %_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_.exit157

437:                                              ; preds = %_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i155
  call void @_ZNKSt5ctypeIcE13_M_widen_initEv(ptr noundef nonnull align 8 dereferenceable(570) %430)
  %438 = load ptr, ptr %430, align 8, !tbaa !14
  %439 = getelementptr inbounds ptr, ptr %438, i64 6
  %440 = load ptr, ptr %439, align 8
  %441 = call noundef signext i8 %440(ptr noundef nonnull align 8 dereferenceable(570) %430, i8 noundef signext 10)
  br label %_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_.exit157

_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_.exit157: ; preds = %434, %437
  %.0.i.i.i156 = phi i8 [ %436, %434 ], [ %441, %437 ]
  %442 = call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo3putEc(ptr noundef nonnull align 8 dereferenceable(8) %424, i8 noundef signext %.0.i.i.i156)
  %443 = call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo5flushEv(ptr noundef nonnull align 8 dereferenceable(8) %442)
  %444 = call double @omp_get_wtime()
  %445 = fsub double 0.000000e+00, %444
  call void (ptr, i32, ptr, ...) @__kmpc_fork_call(ptr nonnull @2, i32 3, ptr nonnull @.omp_outlined..10, ptr nonnull %4, ptr nonnull %1, ptr nonnull %2)
  %446 = call double @omp_get_wtime()
  %447 = fadd double %445, %446
  %448 = call double @omp_get_wtime()
  %449 = fsub double %447, %448
  call void (ptr, i32, ptr, ...) @__kmpc_fork_call(ptr nonnull @2, i32 3, ptr nonnull @.omp_outlined..10, ptr nonnull %4, ptr nonnull %1, ptr nonnull %2)
  %450 = call double @omp_get_wtime()
  %451 = fadd double %449, %450
  %452 = call double @omp_get_wtime()
  %453 = fsub double %451, %452
  call void (ptr, i32, ptr, ...) @__kmpc_fork_call(ptr nonnull @2, i32 3, ptr nonnull @.omp_outlined..10, ptr nonnull %4, ptr nonnull %1, ptr nonnull %2)
  %454 = call double @omp_get_wtime()
  %455 = fadd double %453, %454
  %456 = call double @omp_get_wtime()
  %457 = fsub double %455, %456
  call void (ptr, i32, ptr, ...) @__kmpc_fork_call(ptr nonnull @2, i32 3, ptr nonnull @.omp_outlined..10, ptr nonnull %4, ptr nonnull %1, ptr nonnull %2)
  %458 = call double @omp_get_wtime()
  %459 = fadd double %457, %458
  %460 = call double @omp_get_wtime()
  %461 = fsub double %459, %460
  call void (ptr, i32, ptr, ...) @__kmpc_fork_call(ptr nonnull @2, i32 3, ptr nonnull @.omp_outlined..10, ptr nonnull %4, ptr nonnull %1, ptr nonnull %2)
  %462 = call double @omp_get_wtime()
  %463 = fadd double %461, %462
  %464 = call double @omp_get_wtime()
  %465 = fsub double %463, %464
  call void (ptr, i32, ptr, ...) @__kmpc_fork_call(ptr nonnull @2, i32 3, ptr nonnull @.omp_outlined..10, ptr nonnull %4, ptr nonnull %1, ptr nonnull %2)
  %466 = call double @omp_get_wtime()
  %467 = fadd double %465, %466
  %468 = call double @omp_get_wtime()
  %469 = fsub double %467, %468
  call void (ptr, i32, ptr, ...) @__kmpc_fork_call(ptr nonnull @2, i32 3, ptr nonnull @.omp_outlined..10, ptr nonnull %4, ptr nonnull %1, ptr nonnull %2)
  %470 = call double @omp_get_wtime()
  %471 = fadd double %469, %470
  %472 = call double @omp_get_wtime()
  %473 = fsub double %471, %472
  call void (ptr, i32, ptr, ...) @__kmpc_fork_call(ptr nonnull @2, i32 3, ptr nonnull @.omp_outlined..10, ptr nonnull %4, ptr nonnull %1, ptr nonnull %2)
  %474 = call double @omp_get_wtime()
  %475 = fadd double %473, %474
  %476 = call double @omp_get_wtime()
  %477 = fsub double %475, %476
  call void (ptr, i32, ptr, ...) @__kmpc_fork_call(ptr nonnull @2, i32 3, ptr nonnull @.omp_outlined..10, ptr nonnull %4, ptr nonnull %1, ptr nonnull %2)
  %478 = call double @omp_get_wtime()
  %479 = fadd double %477, %478
  %480 = call double @omp_get_wtime()
  %481 = fsub double %479, %480
  call void (ptr, i32, ptr, ...) @__kmpc_fork_call(ptr nonnull @2, i32 3, ptr nonnull @.omp_outlined..10, ptr nonnull %4, ptr nonnull %1, ptr nonnull %2)
  %482 = call double @omp_get_wtime()
  %483 = fadd double %481, %482
  br label %486

484:                                              ; preds = %523
  %485 = and i8 %.3127, 1
  %.not134 = icmp eq i8 %485, 0
  br i1 %.not134, label %525, label %524

486:                                              ; preds = %_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_.exit157, %523
  %indvars.iv238 = phi i64 [ 0, %_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_.exit157 ], [ %indvars.iv.next239, %523 ]
  %.2126208 = phi i8 [ 0, %_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_.exit157 ], [ %.3127, %523 ]
  %487 = load ptr, ptr %4, align 8, !tbaa !29
  %488 = shl nuw nsw i64 %indvars.iv238, 4
  %489 = getelementptr inbounds i32, ptr %487, i64 %488
  %490 = load i32, ptr %489, align 4, !tbaa !30
  %491 = getelementptr inbounds i32, ptr %calloc250, i64 %indvars.iv238
  %492 = load i32, ptr %491, align 4, !tbaa !30
  %.not141 = icmp eq i32 %490, %492
  br i1 %.not141, label %523, label %493

493:                                              ; preds = %486
  %494 = call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) @_ZSt4cout, ptr noundef nonnull @.str.11, i64 noundef 45)
  %495 = trunc i64 %indvars.iv238 to i32
  %496 = call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSolsEi(ptr noundef nonnull align 8 dereferenceable(8) @_ZSt4cout, i32 noundef %495)
  %497 = call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %496, ptr noundef nonnull @.str.12, i64 noundef 23)
  %498 = load ptr, ptr %4, align 8, !tbaa !29
  %499 = getelementptr inbounds i32, ptr %498, i64 %488
  %500 = load i32, ptr %499, align 4, !tbaa !30
  %501 = call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSolsEi(ptr noundef nonnull align 8 dereferenceable(8) %496, i32 noundef %500)
  %502 = call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %501, ptr noundef nonnull @.str.6, i64 noundef 14)
  %503 = call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSolsEi(ptr noundef nonnull align 8 dereferenceable(8) %501, i32 noundef %492)
  %504 = load ptr, ptr %503, align 8, !tbaa !14
  %505 = getelementptr i8, ptr %504, i64 -24
  %506 = load i64, ptr %505, align 8
  %507 = getelementptr inbounds i8, ptr %503, i64 %506
  %508 = getelementptr inbounds %"class.std::basic_ios", ptr %507, i64 0, i32 5
  %509 = load ptr, ptr %508, align 8, !tbaa !24
  %.not.i.i.i158 = icmp eq ptr %509, null
  br i1 %.not.i.i.i158, label %510, label %_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i160

510:                                              ; preds = %493
  call void @_ZSt16__throw_bad_castv() #15
  unreachable

_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i160: ; preds = %493
  %511 = getelementptr inbounds %"class.std::ctype", ptr %509, i64 0, i32 8
  %512 = load i8, ptr %511, align 8, !tbaa !27
  %.not.i1.i.i159 = icmp eq i8 %512, 0
  br i1 %.not.i1.i.i159, label %516, label %513

513:                                              ; preds = %_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i160
  %514 = getelementptr inbounds %"class.std::ctype", ptr %509, i64 0, i32 9, i64 10
  %515 = load i8, ptr %514, align 1, !tbaa !13
  br label %_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_.exit162

516:                                              ; preds = %_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i160
  call void @_ZNKSt5ctypeIcE13_M_widen_initEv(ptr noundef nonnull align 8 dereferenceable(570) %509)
  %517 = load ptr, ptr %509, align 8, !tbaa !14
  %518 = getelementptr inbounds ptr, ptr %517, i64 6
  %519 = load ptr, ptr %518, align 8
  %520 = call noundef signext i8 %519(ptr noundef nonnull align 8 dereferenceable(570) %509, i8 noundef signext 10)
  br label %_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_.exit162

_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_.exit162: ; preds = %513, %516
  %.0.i.i.i161 = phi i8 [ %515, %513 ], [ %520, %516 ]
  %521 = call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo3putEc(ptr noundef nonnull align 8 dereferenceable(8) %503, i8 noundef signext %.0.i.i.i161)
  %522 = call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo5flushEv(ptr noundef nonnull align 8 dereferenceable(8) %521)
  br label %523

523:                                              ; preds = %486, %_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_.exit162
  %.3127 = phi i8 [ 1, %_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_.exit162 ], [ %.2126208, %486 ]
  %indvars.iv.next239 = add nuw nsw i64 %indvars.iv238, 1
  %exitcond240.not = icmp eq i64 %indvars.iv.next239, 131072
  br i1 %exitcond240.not, label %484, label %486, !llvm.loop !36

524:                                              ; preds = %484
  call void @__assert_fail(ptr noundef nonnull @.str.13, ptr noundef nonnull @.str.8, i32 noundef 98, ptr noundef nonnull @__PRETTY_FUNCTION__.main) #17
  unreachable

525:                                              ; preds = %484
  %526 = call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) @_ZSt4cout, ptr noundef nonnull @.str.14, i64 noundef 44)
  %527 = call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSolsEi(ptr noundef nonnull align 8 dereferenceable(8) @_ZSt4cout, i32 noundef 33554432)
  %528 = call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %527, ptr noundef nonnull @.str.2, i64 noundef 11)
  %529 = call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSolsEi(ptr noundef nonnull align 8 dereferenceable(8) %527, i32 noundef 131072)
  %530 = call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %529, ptr noundef nonnull @.str.3, i64 noundef 4)
  %531 = call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo9_M_insertIdEERSoT_(ptr noundef nonnull align 8 dereferenceable(8) %529, double noundef %483)
  %532 = load ptr, ptr %531, align 8, !tbaa !14
  %533 = getelementptr i8, ptr %532, i64 -24
  %534 = load i64, ptr %533, align 8
  %535 = getelementptr inbounds i8, ptr %531, i64 %534
  %536 = getelementptr inbounds %"class.std::basic_ios", ptr %535, i64 0, i32 5
  %537 = load ptr, ptr %536, align 8, !tbaa !24
  %.not.i.i.i163 = icmp eq ptr %537, null
  br i1 %.not.i.i.i163, label %538, label %_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i165

538:                                              ; preds = %525
  call void @_ZSt16__throw_bad_castv() #15
  unreachable

_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i165: ; preds = %525
  %539 = getelementptr inbounds %"class.std::ctype", ptr %537, i64 0, i32 8
  %540 = load i8, ptr %539, align 8, !tbaa !27
  %.not.i1.i.i164 = icmp eq i8 %540, 0
  br i1 %.not.i1.i.i164, label %544, label %541

541:                                              ; preds = %_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i165
  %542 = getelementptr inbounds %"class.std::ctype", ptr %537, i64 0, i32 9, i64 10
  %543 = load i8, ptr %542, align 1, !tbaa !13
  br label %_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_.exit167

544:                                              ; preds = %_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i165
  call void @_ZNKSt5ctypeIcE13_M_widen_initEv(ptr noundef nonnull align 8 dereferenceable(570) %537)
  %545 = load ptr, ptr %537, align 8, !tbaa !14
  %546 = getelementptr inbounds ptr, ptr %545, i64 6
  %547 = load ptr, ptr %546, align 8
  %548 = call noundef signext i8 %547(ptr noundef nonnull align 8 dereferenceable(570) %537, i8 noundef signext 10)
  br label %_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_.exit167

_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_.exit167: ; preds = %541, %544
  %.0.i.i.i166 = phi i8 [ %543, %541 ], [ %548, %544 ]
  %549 = call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo3putEc(ptr noundef nonnull align 8 dereferenceable(8) %531, i8 noundef signext %.0.i.i.i166)
  %550 = call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo5flushEv(ptr noundef nonnull align 8 dereferenceable(8) %549)
  store ptr %calloc, ptr %5, align 8
  store ptr %calloc, ptr %6, align 8
  call void @__tgt_target_data_begin_mapper(ptr nonnull @2, i64 -1, i32 1, ptr nonnull %5, ptr nonnull %6, ptr nonnull @.offload_sizes.23, ptr nonnull @.offload_maptypes.38, ptr null, ptr null)
  %551 = load ptr, ptr %2, align 8
  store ptr %551, ptr %7, align 8
  store ptr %551, ptr %8, align 8
  call void @__tgt_target_data_begin_mapper(ptr nonnull @2, i64 -1, i32 1, ptr nonnull %7, ptr nonnull %8, ptr nonnull @.offload_sizes.47, ptr nonnull @.offload_maptypes.38, ptr null, ptr null)
  %552 = load ptr, ptr %1, align 8
  store ptr %552, ptr %9, align 8
  store ptr %552, ptr %10, align 8
  call void @__tgt_target_data_begin_mapper(ptr nonnull @2, i64 -1, i32 1, ptr nonnull %9, ptr nonnull %10, ptr nonnull @.offload_sizes.47, ptr nonnull @.offload_maptypes.38, ptr null, ptr null)
  %553 = getelementptr inbounds [3 x ptr], ptr %11, i64 0, i64 1
  %554 = getelementptr inbounds [3 x ptr], ptr %12, i64 0, i64 1
  %555 = getelementptr inbounds [3 x ptr], ptr %11, i64 0, i64 2
  %556 = getelementptr inbounds [3 x ptr], ptr %12, i64 0, i64 2
  br label %560

557:                                              ; preds = %567
  store ptr %calloc, ptr %13, align 8
  store ptr %calloc, ptr %14, align 8
  call void @__tgt_target_data_end_mapper(ptr nonnull @2, i64 -1, i32 1, ptr nonnull %13, ptr nonnull %14, ptr nonnull @.offload_sizes.23, ptr nonnull @.offload_maptypes.44, ptr null, ptr null)
  %558 = load ptr, ptr %2, align 8
  store ptr %558, ptr %15, align 8
  store ptr %558, ptr %16, align 8
  call void @__tgt_target_data_end_mapper(ptr nonnull @2, i64 -1, i32 1, ptr nonnull %15, ptr nonnull %16, ptr nonnull @.offload_sizes.47, ptr nonnull @.offload_maptypes.48, ptr null, ptr null)
  %559 = load ptr, ptr %1, align 8
  store ptr %559, ptr %17, align 8
  store ptr %559, ptr %18, align 8
  call void @__tgt_target_data_end_mapper(ptr nonnull @2, i64 -1, i32 1, ptr nonnull %17, ptr nonnull %18, ptr nonnull @.offload_sizes.47, ptr nonnull @.offload_maptypes.48, ptr null, ptr null)
  br label %573

560:                                              ; preds = %_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_.exit167, %567
  %.3210 = phi double [ 0.000000e+00, %_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_.exit167 ], [ %569, %567 ]
  %.0133209 = phi i32 [ 0, %_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_.exit167 ], [ %570, %567 ]
  %561 = call double @omp_get_wtime()
  %562 = fsub double %.3210, %561
  %563 = load ptr, ptr %1, align 8, !tbaa !29
  %564 = load ptr, ptr %2, align 8, !tbaa !29
  store ptr %calloc, ptr %11, align 8
  store ptr %calloc, ptr %12, align 8
  store ptr %563, ptr %553, align 8
  store ptr %563, ptr %554, align 8
  store ptr %564, ptr %555, align 8
  store ptr %564, ptr %556, align 8
  call void @__kmpc_push_target_tripcount_mapper(ptr nonnull @2, i64 -1, i64 33554432)
  %565 = call i32 @__tgt_target_teams_mapper(ptr nonnull @2, i64 -1, ptr nonnull @.__omp_offloading_10302_46e1258_main_l110.region_id, i32 3, ptr nonnull %11, ptr nonnull %12, ptr nonnull @.offload_sizes.41, ptr nonnull @.offload_maptypes.42, ptr null, ptr null, i32 0, i32 0)
  %.not140 = icmp eq i32 %565, 0
  br i1 %.not140, label %567, label %566

566:                                              ; preds = %560
  call void (ptr, i32, ptr, ...) @__kmpc_fork_teams(ptr nonnull @2, i32 3, ptr nonnull @.omp_outlined..19, ptr %calloc, ptr %563, ptr %564) #7
  br label %567

567:                                              ; preds = %566, %560
  %568 = call double @omp_get_wtime()
  %569 = fadd double %562, %568
  %570 = add nuw nsw i32 %.0133209, 1
  %exitcond241.not = icmp eq i32 %570, 10
  br i1 %exitcond241.not, label %557, label %560, !llvm.loop !37

571:                                              ; preds = %606
  %572 = and i8 %.5, 1
  %.not135 = icmp eq i8 %572, 0
  br i1 %.not135, label %608, label %607

573:                                              ; preds = %557, %606
  %indvars.iv242 = phi i64 [ 0, %557 ], [ %indvars.iv.next243, %606 ]
  %.4128213 = phi i8 [ %.3127, %557 ], [ %.5, %606 ]
  %574 = getelementptr inbounds i32, ptr %calloc, i64 %indvars.iv242
  %575 = load i32, ptr %574, align 4, !tbaa !30
  %576 = getelementptr inbounds i32, ptr %calloc250, i64 %indvars.iv242
  %577 = load i32, ptr %576, align 4, !tbaa !30
  %.not139 = icmp eq i32 %575, %577
  br i1 %.not139, label %606, label %578

578:                                              ; preds = %573
  %579 = call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) @_ZSt4cout, ptr noundef nonnull @.str.29, i64 noundef 42)
  %580 = trunc i64 %indvars.iv242 to i32
  %581 = call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSolsEi(ptr noundef nonnull align 8 dereferenceable(8) @_ZSt4cout, i32 noundef %580)
  %582 = call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %581, ptr noundef nonnull @.str.30, i64 noundef 17)
  %583 = load i32, ptr %574, align 4, !tbaa !30
  %584 = call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSolsEi(ptr noundef nonnull align 8 dereferenceable(8) %581, i32 noundef %583)
  %585 = call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %584, ptr noundef nonnull @.str.6, i64 noundef 14)
  %586 = call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSolsEi(ptr noundef nonnull align 8 dereferenceable(8) %584, i32 noundef %577)
  %587 = load ptr, ptr %586, align 8, !tbaa !14
  %588 = getelementptr i8, ptr %587, i64 -24
  %589 = load i64, ptr %588, align 8
  %590 = getelementptr inbounds i8, ptr %586, i64 %589
  %591 = getelementptr inbounds %"class.std::basic_ios", ptr %590, i64 0, i32 5
  %592 = load ptr, ptr %591, align 8, !tbaa !24
  %.not.i.i.i168 = icmp eq ptr %592, null
  br i1 %.not.i.i.i168, label %593, label %_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i170

593:                                              ; preds = %578
  call void @_ZSt16__throw_bad_castv() #15
  unreachable

_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i170: ; preds = %578
  %594 = getelementptr inbounds %"class.std::ctype", ptr %592, i64 0, i32 8
  %595 = load i8, ptr %594, align 8, !tbaa !27
  %.not.i1.i.i169 = icmp eq i8 %595, 0
  br i1 %.not.i1.i.i169, label %599, label %596

596:                                              ; preds = %_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i170
  %597 = getelementptr inbounds %"class.std::ctype", ptr %592, i64 0, i32 9, i64 10
  %598 = load i8, ptr %597, align 1, !tbaa !13
  br label %_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_.exit172

599:                                              ; preds = %_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i170
  call void @_ZNKSt5ctypeIcE13_M_widen_initEv(ptr noundef nonnull align 8 dereferenceable(570) %592)
  %600 = load ptr, ptr %592, align 8, !tbaa !14
  %601 = getelementptr inbounds ptr, ptr %600, i64 6
  %602 = load ptr, ptr %601, align 8
  %603 = call noundef signext i8 %602(ptr noundef nonnull align 8 dereferenceable(570) %592, i8 noundef signext 10)
  br label %_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_.exit172

_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_.exit172: ; preds = %596, %599
  %.0.i.i.i171 = phi i8 [ %598, %596 ], [ %603, %599 ]
  %604 = call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo3putEc(ptr noundef nonnull align 8 dereferenceable(8) %586, i8 noundef signext %.0.i.i.i171)
  %605 = call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo5flushEv(ptr noundef nonnull align 8 dereferenceable(8) %604)
  br label %606

606:                                              ; preds = %573, %_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_.exit172
  %.5 = phi i8 [ 1, %_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_.exit172 ], [ %.4128213, %573 ]
  %indvars.iv.next243 = add nuw nsw i64 %indvars.iv242, 1
  %exitcond244.not = icmp eq i64 %indvars.iv.next243, 131072
  br i1 %exitcond244.not, label %571, label %573, !llvm.loop !38

607:                                              ; preds = %571
  call void @__assert_fail(ptr noundef nonnull @.str.31, ptr noundef nonnull @.str.8, i32 noundef 131, ptr noundef nonnull @__PRETTY_FUNCTION__.main) #17
  unreachable

608:                                              ; preds = %571
  %609 = call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) @_ZSt4cout, ptr noundef nonnull @.str.32, i64 noundef 47)
  %610 = call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSolsEi(ptr noundef nonnull align 8 dereferenceable(8) @_ZSt4cout, i32 noundef 33554432)
  %611 = call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %610, ptr noundef nonnull @.str.2, i64 noundef 11)
  %612 = call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSolsEi(ptr noundef nonnull align 8 dereferenceable(8) %610, i32 noundef 131072)
  %613 = call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %612, ptr noundef nonnull @.str.3, i64 noundef 4)
  %614 = call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo9_M_insertIdEERSoT_(ptr noundef nonnull align 8 dereferenceable(8) %612, double noundef %569)
  %615 = load ptr, ptr %614, align 8, !tbaa !14
  %616 = getelementptr i8, ptr %615, i64 -24
  %617 = load i64, ptr %616, align 8
  %618 = getelementptr inbounds i8, ptr %614, i64 %617
  %619 = getelementptr inbounds %"class.std::basic_ios", ptr %618, i64 0, i32 5
  %620 = load ptr, ptr %619, align 8, !tbaa !24
  %.not.i.i.i173 = icmp eq ptr %620, null
  br i1 %.not.i.i.i173, label %621, label %_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i175

621:                                              ; preds = %608
  call void @_ZSt16__throw_bad_castv() #15
  unreachable

_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i175: ; preds = %608
  %622 = getelementptr inbounds %"class.std::ctype", ptr %620, i64 0, i32 8
  %623 = load i8, ptr %622, align 8, !tbaa !27
  %.not.i1.i.i174 = icmp eq i8 %623, 0
  br i1 %.not.i1.i.i174, label %627, label %624

624:                                              ; preds = %_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i175
  %625 = getelementptr inbounds %"class.std::ctype", ptr %620, i64 0, i32 9, i64 10
  %626 = load i8, ptr %625, align 1, !tbaa !13
  br label %_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_.exit177

627:                                              ; preds = %_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i175
  call void @_ZNKSt5ctypeIcE13_M_widen_initEv(ptr noundef nonnull align 8 dereferenceable(570) %620)
  %628 = load ptr, ptr %620, align 8, !tbaa !14
  %629 = getelementptr inbounds ptr, ptr %628, i64 6
  %630 = load ptr, ptr %629, align 8
  %631 = call noundef signext i8 %630(ptr noundef nonnull align 8 dereferenceable(570) %620, i8 noundef signext 10)
  br label %_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_.exit177

_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_.exit177: ; preds = %624, %627
  %.0.i.i.i176 = phi i8 [ %626, %624 ], [ %631, %627 ]
  %632 = call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo3putEc(ptr noundef nonnull align 8 dereferenceable(8) %614, i8 noundef signext %.0.i.i.i176)
  %633 = call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo5flushEv(ptr noundef nonnull align 8 dereferenceable(8) %632)
  store ptr %72, ptr %19, align 8
  store ptr %72, ptr %20, align 8
  call void @__tgt_target_data_begin_mapper(ptr nonnull @2, i64 -1, i32 1, ptr nonnull %19, ptr nonnull %20, ptr nonnull @.offload_sizes.43, ptr nonnull @.offload_maptypes.38, ptr null, ptr null)
  %634 = load ptr, ptr %2, align 8
  store ptr %634, ptr %21, align 8
  store ptr %634, ptr %22, align 8
  call void @__tgt_target_data_begin_mapper(ptr nonnull @2, i64 -1, i32 1, ptr nonnull %21, ptr nonnull %22, ptr nonnull @.offload_sizes.47, ptr nonnull @.offload_maptypes.38, ptr null, ptr null)
  %635 = load ptr, ptr %1, align 8
  store ptr %635, ptr %23, align 8
  store ptr %635, ptr %24, align 8
  call void @__tgt_target_data_begin_mapper(ptr nonnull @2, i64 -1, i32 1, ptr nonnull %23, ptr nonnull %24, ptr nonnull @.offload_sizes.47, ptr nonnull @.offload_maptypes.38, ptr null, ptr null)
  %636 = getelementptr inbounds [3 x ptr], ptr %25, i64 0, i64 1
  %637 = getelementptr inbounds [3 x ptr], ptr %26, i64 0, i64 1
  %638 = getelementptr inbounds [3 x ptr], ptr %25, i64 0, i64 2
  %639 = getelementptr inbounds [3 x ptr], ptr %26, i64 0, i64 2
  br label %643

640:                                              ; preds = %650
  store ptr %72, ptr %27, align 8
  store ptr %72, ptr %28, align 8
  call void @__tgt_target_data_end_mapper(ptr nonnull @2, i64 -1, i32 1, ptr nonnull %27, ptr nonnull %28, ptr nonnull @.offload_sizes.43, ptr nonnull @.offload_maptypes.44, ptr null, ptr null)
  %641 = load ptr, ptr %2, align 8
  store ptr %641, ptr %29, align 8
  store ptr %641, ptr %30, align 8
  call void @__tgt_target_data_end_mapper(ptr nonnull @2, i64 -1, i32 1, ptr nonnull %29, ptr nonnull %30, ptr nonnull @.offload_sizes.47, ptr nonnull @.offload_maptypes.48, ptr null, ptr null)
  %642 = load ptr, ptr %1, align 8
  store ptr %642, ptr %31, align 8
  store ptr %642, ptr %32, align 8
  call void @__tgt_target_data_end_mapper(ptr nonnull @2, i64 -1, i32 1, ptr nonnull %31, ptr nonnull %32, ptr nonnull @.offload_sizes.47, ptr nonnull @.offload_maptypes.48, ptr null, ptr null)
  br label %656

643:                                              ; preds = %_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_.exit177, %650
  %.4215 = phi double [ 0.000000e+00, %_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_.exit177 ], [ %652, %650 ]
  %.0121214 = phi i32 [ 0, %_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_.exit177 ], [ %653, %650 ]
  %644 = call double @omp_get_wtime()
  %645 = fsub double %.4215, %644
  %646 = load ptr, ptr %1, align 8, !tbaa !29
  %647 = load ptr, ptr %2, align 8, !tbaa !29
  store ptr %72, ptr %25, align 8
  store ptr %72, ptr %26, align 8
  store ptr %646, ptr %636, align 8
  store ptr %646, ptr %637, align 8
  store ptr %647, ptr %638, align 8
  store ptr %647, ptr %639, align 8
  call void @__kmpc_push_target_tripcount_mapper(ptr nonnull @2, i64 -1, i64 33554432)
  %648 = call i32 @__tgt_target_teams_mapper(ptr nonnull @2, i64 -1, ptr nonnull @.__omp_offloading_10302_46e1258_main_l143.region_id, i32 3, ptr nonnull %25, ptr nonnull %26, ptr nonnull @.offload_sizes.41, ptr nonnull @.offload_maptypes.42, ptr null, ptr null, i32 0, i32 0)
  %.not138 = icmp eq i32 %648, 0
  br i1 %.not138, label %650, label %649

649:                                              ; preds = %643
  call void (ptr, i32, ptr, ...) @__kmpc_fork_teams(ptr nonnull @2, i32 3, ptr nonnull @.omp_outlined..39, ptr %72, ptr %646, ptr %647) #7
  br label %650

650:                                              ; preds = %649, %643
  %651 = call double @omp_get_wtime()
  %652 = fadd double %645, %651
  %653 = add nuw nsw i32 %.0121214, 1
  %exitcond245.not = icmp eq i32 %653, 10
  br i1 %exitcond245.not, label %640, label %643, !llvm.loop !39

654:                                              ; preds = %690
  %655 = and i8 %.7, 1
  %.not136 = icmp eq i8 %655, 0
  br i1 %.not136, label %692, label %691

656:                                              ; preds = %640, %690
  %indvars.iv246 = phi i64 [ 0, %640 ], [ %indvars.iv.next247, %690 ]
  %.6216 = phi i8 [ %.5, %640 ], [ %.7, %690 ]
  %657 = shl nuw nsw i64 %indvars.iv246, 4
  %658 = getelementptr inbounds i32, ptr %72, i64 %657
  %659 = load i32, ptr %658, align 4, !tbaa !30
  %660 = getelementptr inbounds i32, ptr %calloc250, i64 %indvars.iv246
  %661 = load i32, ptr %660, align 4, !tbaa !30
  %.not137 = icmp eq i32 %659, %661
  br i1 %.not137, label %690, label %662

662:                                              ; preds = %656
  %663 = call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) @_ZSt4cout, ptr noundef nonnull @.str.49, i64 noundef 45)
  %664 = trunc i64 %indvars.iv246 to i32
  %665 = call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSolsEi(ptr noundef nonnull align 8 dereferenceable(8) @_ZSt4cout, i32 noundef %664)
  %666 = call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %665, ptr noundef nonnull @.str.50, i64 noundef 23)
  %667 = load i32, ptr %658, align 4, !tbaa !30
  %668 = call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSolsEi(ptr noundef nonnull align 8 dereferenceable(8) %665, i32 noundef %667)
  %669 = call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %668, ptr noundef nonnull @.str.6, i64 noundef 14)
  %670 = call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSolsEi(ptr noundef nonnull align 8 dereferenceable(8) %668, i32 noundef %661)
  %671 = load ptr, ptr %670, align 8, !tbaa !14
  %672 = getelementptr i8, ptr %671, i64 -24
  %673 = load i64, ptr %672, align 8
  %674 = getelementptr inbounds i8, ptr %670, i64 %673
  %675 = getelementptr inbounds %"class.std::basic_ios", ptr %674, i64 0, i32 5
  %676 = load ptr, ptr %675, align 8, !tbaa !24
  %.not.i.i.i178 = icmp eq ptr %676, null
  br i1 %.not.i.i.i178, label %677, label %_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i180

677:                                              ; preds = %662
  call void @_ZSt16__throw_bad_castv() #15
  unreachable

_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i180: ; preds = %662
  %678 = getelementptr inbounds %"class.std::ctype", ptr %676, i64 0, i32 8
  %679 = load i8, ptr %678, align 8, !tbaa !27
  %.not.i1.i.i179 = icmp eq i8 %679, 0
  br i1 %.not.i1.i.i179, label %683, label %680

680:                                              ; preds = %_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i180
  %681 = getelementptr inbounds %"class.std::ctype", ptr %676, i64 0, i32 9, i64 10
  %682 = load i8, ptr %681, align 1, !tbaa !13
  br label %_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_.exit182

683:                                              ; preds = %_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i180
  call void @_ZNKSt5ctypeIcE13_M_widen_initEv(ptr noundef nonnull align 8 dereferenceable(570) %676)
  %684 = load ptr, ptr %676, align 8, !tbaa !14
  %685 = getelementptr inbounds ptr, ptr %684, i64 6
  %686 = load ptr, ptr %685, align 8
  %687 = call noundef signext i8 %686(ptr noundef nonnull align 8 dereferenceable(570) %676, i8 noundef signext 10)
  br label %_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_.exit182

_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_.exit182: ; preds = %680, %683
  %.0.i.i.i181 = phi i8 [ %682, %680 ], [ %687, %683 ]
  %688 = call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo3putEc(ptr noundef nonnull align 8 dereferenceable(8) %670, i8 noundef signext %.0.i.i.i181)
  %689 = call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo5flushEv(ptr noundef nonnull align 8 dereferenceable(8) %688)
  br label %690

690:                                              ; preds = %656, %_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_.exit182
  %.7 = phi i8 [ 1, %_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_.exit182 ], [ %.6216, %656 ]
  %indvars.iv.next247 = add nuw nsw i64 %indvars.iv246, 1
  %exitcond248.not = icmp eq i64 %indvars.iv.next247, 131072
  br i1 %exitcond248.not, label %654, label %656, !llvm.loop !40

691:                                              ; preds = %654
  call void @__assert_fail(ptr noundef nonnull @.str.51, ptr noundef nonnull @.str.8, i32 noundef 164, ptr noundef nonnull @__PRETTY_FUNCTION__.main) #17
  unreachable

692:                                              ; preds = %654
  %693 = call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) @_ZSt4cout, ptr noundef nonnull @.str.52, i64 noundef 44)
  %694 = call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSolsEi(ptr noundef nonnull align 8 dereferenceable(8) @_ZSt4cout, i32 noundef 33554432)
  %695 = call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %694, ptr noundef nonnull @.str.2, i64 noundef 11)
  %696 = call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSolsEi(ptr noundef nonnull align 8 dereferenceable(8) %694, i32 noundef 131072)
  %697 = call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %696, ptr noundef nonnull @.str.3, i64 noundef 4)
  %698 = call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo9_M_insertIdEERSoT_(ptr noundef nonnull align 8 dereferenceable(8) %696, double noundef %652)
  %699 = load ptr, ptr %698, align 8, !tbaa !14
  %700 = getelementptr i8, ptr %699, i64 -24
  %701 = load i64, ptr %700, align 8
  %702 = getelementptr inbounds i8, ptr %698, i64 %701
  %703 = getelementptr inbounds %"class.std::basic_ios", ptr %702, i64 0, i32 5
  %704 = load ptr, ptr %703, align 8, !tbaa !24
  %.not.i.i.i183 = icmp eq ptr %704, null
  br i1 %.not.i.i.i183, label %705, label %_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i185

705:                                              ; preds = %692
  call void @_ZSt16__throw_bad_castv() #15
  unreachable

_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i185: ; preds = %692
  %706 = getelementptr inbounds %"class.std::ctype", ptr %704, i64 0, i32 8
  %707 = load i8, ptr %706, align 8, !tbaa !27
  %.not.i1.i.i184 = icmp eq i8 %707, 0
  br i1 %.not.i1.i.i184, label %711, label %708

708:                                              ; preds = %_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i185
  %709 = getelementptr inbounds %"class.std::ctype", ptr %704, i64 0, i32 9, i64 10
  %710 = load i8, ptr %709, align 1, !tbaa !13
  br label %_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_.exit187

711:                                              ; preds = %_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i185
  call void @_ZNKSt5ctypeIcE13_M_widen_initEv(ptr noundef nonnull align 8 dereferenceable(570) %704)
  %712 = load ptr, ptr %704, align 8, !tbaa !14
  %713 = getelementptr inbounds ptr, ptr %712, i64 6
  %714 = load ptr, ptr %713, align 8
  %715 = call noundef signext i8 %714(ptr noundef nonnull align 8 dereferenceable(570) %704, i8 noundef signext 10)
  br label %_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_.exit187

_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_.exit187: ; preds = %708, %711
  %.0.i.i.i186 = phi i8 [ %710, %708 ], [ %715, %711 ]
  %716 = call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo3putEc(ptr noundef nonnull align 8 dereferenceable(8) %698, i8 noundef signext %.0.i.i.i186)
  %717 = call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo5flushEv(ptr noundef nonnull align 8 dereferenceable(8) %716)
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %4) #7
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %3) #7
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %2) #7
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %1) #7
  ret i32 0
}

; Function Attrs: argmemonly mustprogress nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #4

; Function Attrs: nounwind
declare void @srand(i32 noundef) local_unnamed_addr #1

; Function Attrs: inaccessiblememonly mustprogress nofree nounwind willreturn allocsize(0)
declare noalias noundef ptr @malloc(i64 noundef) local_unnamed_addr #5

; Function Attrs: nounwind
declare i32 @rand() local_unnamed_addr #1

; Function Attrs: argmemonly mustprogress nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #4

declare double @omp_get_wtime() local_unnamed_addr #0

declare noundef nonnull align 8 dereferenceable(8) ptr @_ZNSolsEi(ptr noundef nonnull align 8 dereferenceable(8), i32 noundef) local_unnamed_addr #0

; Function Attrs: alwaysinline norecurse nounwind uwtable
define internal void @.omp_outlined.(ptr noalias nocapture noundef readonly %0, ptr noalias nocapture noundef readnone %1, ptr nocapture noundef nonnull readonly align 8 dereferenceable(8) %2, ptr nocapture noundef nonnull readonly align 8 dereferenceable(8) %3, ptr nocapture noundef nonnull readonly align 8 dereferenceable(8) %4) #6 {
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %6) #7
  store i32 0, ptr %6, align 4, !tbaa !30
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %7) #7
  store i32 33554431, ptr %7, align 4, !tbaa !30
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %8) #7
  store i32 1, ptr %8, align 4, !tbaa !30
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %9) #7
  store i32 0, ptr %9, align 4, !tbaa !30
  %10 = load i32, ptr %0, align 4, !tbaa !30
  call void @__kmpc_for_static_init_4(ptr nonnull @1, i32 %10, i32 34, ptr nonnull %9, ptr nonnull %6, ptr nonnull %7, ptr nonnull %8, i32 1, i32 1)
  %11 = load i32, ptr %7, align 4, !tbaa !30
  %12 = call i32 @llvm.smin.i32(i32 %11, i32 33554431)
  store i32 %12, ptr %7, align 4, !tbaa !30
  %13 = load i32, ptr %6, align 4, !tbaa !30
  %.not9 = icmp sgt i32 %13, %12
  br i1 %.not9, label %._crit_edge, label %.lr.ph.preheader

.lr.ph.preheader:                                 ; preds = %5
  %14 = sext i32 %13 to i64
  br label %.lr.ph

.lr.ph:                                           ; preds = %.lr.ph.preheader, %.lr.ph
  %indvars.iv = phi i64 [ %14, %.lr.ph.preheader ], [ %indvars.iv.next, %.lr.ph ]
  %15 = load ptr, ptr %2, align 8, !tbaa !29, !llvm.access.group !41
  %16 = load ptr, ptr %3, align 8, !tbaa !29, !llvm.access.group !41
  %17 = getelementptr inbounds i32, ptr %16, i64 %indvars.iv
  %18 = load i32, ptr %17, align 4, !tbaa !30, !llvm.access.group !41
  %19 = sext i32 %18 to i64
  %20 = getelementptr inbounds i32, ptr %15, i64 %19
  %21 = load ptr, ptr %4, align 8, !tbaa !29, !llvm.access.group !41
  %22 = getelementptr inbounds i32, ptr %21, i64 %indvars.iv
  %23 = load i32, ptr %22, align 4, !tbaa !30, !llvm.access.group !41
  %24 = atomicrmw add ptr %20, i32 %23 monotonic, align 4, !llvm.access.group !41
  %indvars.iv.next = add nsw i64 %indvars.iv, 1
  %25 = load i32, ptr %7, align 4, !tbaa !30, !llvm.access.group !41
  %26 = sext i32 %25 to i64
  %.not.not = icmp slt i64 %indvars.iv, %26
  br i1 %.not.not, label %.lr.ph, label %._crit_edge, !llvm.loop !42

._crit_edge:                                      ; preds = %.lr.ph, %5
  call void @__kmpc_for_static_fini(ptr nonnull @1, i32 %10)
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %9) #7
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %8) #7
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %7) #7
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %6) #7
  ret void
}

; Function Attrs: nounwind
declare void @__kmpc_for_static_init_4(ptr, i32, i32, ptr, ptr, ptr, ptr, i32, i32) local_unnamed_addr #7

; Function Attrs: nounwind
declare void @__kmpc_for_static_fini(ptr, i32) local_unnamed_addr #7

; Function Attrs: nounwind
declare !callback !45 void @__kmpc_fork_call(ptr, i32, ptr, ...) local_unnamed_addr #7

; Function Attrs: noreturn nounwind
declare void @__assert_fail(ptr noundef, ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #8

; Function Attrs: alwaysinline norecurse nounwind uwtable
define internal void @.omp_outlined..10(ptr noalias nocapture noundef readonly %0, ptr noalias nocapture noundef readnone %1, ptr nocapture noundef nonnull readonly align 8 dereferenceable(8) %2, ptr nocapture noundef nonnull readonly align 8 dereferenceable(8) %3, ptr nocapture noundef nonnull readonly align 8 dereferenceable(8) %4) #6 {
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %6) #7
  store i32 0, ptr %6, align 4, !tbaa !30
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %7) #7
  store i32 33554431, ptr %7, align 4, !tbaa !30
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %8) #7
  store i32 1, ptr %8, align 4, !tbaa !30
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %9) #7
  store i32 0, ptr %9, align 4, !tbaa !30
  %10 = load i32, ptr %0, align 4, !tbaa !30
  call void @__kmpc_for_static_init_4(ptr nonnull @1, i32 %10, i32 34, ptr nonnull %9, ptr nonnull %6, ptr nonnull %7, ptr nonnull %8, i32 1, i32 1)
  %11 = load i32, ptr %7, align 4, !tbaa !30
  %12 = call i32 @llvm.smin.i32(i32 %11, i32 33554431)
  store i32 %12, ptr %7, align 4, !tbaa !30
  %13 = load i32, ptr %6, align 4, !tbaa !30
  %.not9 = icmp sgt i32 %13, %12
  br i1 %.not9, label %._crit_edge, label %.lr.ph.preheader

.lr.ph.preheader:                                 ; preds = %5
  %14 = sext i32 %13 to i64
  br label %.lr.ph

.lr.ph:                                           ; preds = %.lr.ph.preheader, %.lr.ph
  %indvars.iv = phi i64 [ %14, %.lr.ph.preheader ], [ %indvars.iv.next, %.lr.ph ]
  %15 = load ptr, ptr %2, align 8, !tbaa !29, !llvm.access.group !47
  %16 = load ptr, ptr %3, align 8, !tbaa !29, !llvm.access.group !47
  %17 = getelementptr inbounds i32, ptr %16, i64 %indvars.iv
  %18 = load i32, ptr %17, align 4, !tbaa !30, !llvm.access.group !47
  %19 = shl nsw i32 %18, 4
  %20 = sext i32 %19 to i64
  %21 = getelementptr inbounds i32, ptr %15, i64 %20
  %22 = load ptr, ptr %4, align 8, !tbaa !29, !llvm.access.group !47
  %23 = getelementptr inbounds i32, ptr %22, i64 %indvars.iv
  %24 = load i32, ptr %23, align 4, !tbaa !30, !llvm.access.group !47
  %25 = atomicrmw add ptr %21, i32 %24 monotonic, align 4, !llvm.access.group !47
  %indvars.iv.next = add nsw i64 %indvars.iv, 1
  %26 = load i32, ptr %7, align 4, !tbaa !30, !llvm.access.group !47
  %27 = sext i32 %26 to i64
  %.not.not = icmp slt i64 %indvars.iv, %27
  br i1 %.not.not, label %.lr.ph, label %._crit_edge, !llvm.loop !48

._crit_edge:                                      ; preds = %.lr.ph, %5
  call void @__kmpc_for_static_fini(ptr nonnull @1, i32 %10)
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %9) #7
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %8) #7
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %7) #7
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %6) #7
  ret void
}

; Function Attrs: nounwind
declare void @__tgt_target_data_begin_mapper(ptr, i64, i32, ptr, ptr, ptr, ptr, ptr, ptr) local_unnamed_addr #7

; Function Attrs: alwaysinline norecurse nounwind uwtable
define internal void @.omp_outlined..19(ptr noalias nocapture noundef readonly %0, ptr noalias nocapture noundef readnone %1, ptr noundef %2, ptr noundef %3, ptr noundef %4) #6 {
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %6) #7
  store i32 0, ptr %6, align 4, !tbaa !30
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %7) #7
  store i32 33554431, ptr %7, align 4, !tbaa !30
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %8) #7
  store i32 1, ptr %8, align 4, !tbaa !30
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %9) #7
  store i32 0, ptr %9, align 4, !tbaa !30
  %10 = load i32, ptr %0, align 4, !tbaa !30
  call void @__kmpc_for_static_init_4(ptr nonnull @3, i32 %10, i32 92, ptr nonnull %9, ptr nonnull %6, ptr nonnull %7, ptr nonnull %8, i32 1, i32 1)
  %11 = load i32, ptr %7, align 4, !tbaa !30
  %12 = call i32 @llvm.smin.i32(i32 %11, i32 33554431)
  store i32 %12, ptr %7, align 4, !tbaa !30
  %13 = load i32, ptr %6, align 4, !tbaa !30
  %.not7 = icmp sgt i32 %13, %12
  br i1 %.not7, label %._crit_edge, label %.lr.ph.preheader

.lr.ph.preheader:                                 ; preds = %5
  %14 = zext i32 %13 to i64
  %15 = zext i32 %12 to i64
  call void (ptr, i32, ptr, ...) @__kmpc_fork_call(ptr nonnull @2, i32 5, ptr nonnull @.omp_outlined..20, i64 %14, i64 %15, ptr %2, ptr %3, ptr %4), !llvm.access.group !50
  %16 = load i32, ptr %8, align 4, !tbaa !30, !llvm.access.group !50
  %17 = add nsw i32 %16, %13
  %18 = load i32, ptr %7, align 4, !tbaa !30, !llvm.access.group !50
  %.not9 = icmp sgt i32 %17, %18
  br i1 %.not9, label %._crit_edge, label %.lr.ph..lr.ph_crit_edge, !llvm.loop !51

.lr.ph..lr.ph_crit_edge:                          ; preds = %.lr.ph.preheader, %.lr.ph..lr.ph_crit_edge
  %19 = phi i32 [ %25, %.lr.ph..lr.ph_crit_edge ], [ %18, %.lr.ph.preheader ]
  %20 = phi i32 [ %24, %.lr.ph..lr.ph_crit_edge ], [ %17, %.lr.ph.preheader ]
  %.pre = load i32, ptr %6, align 4, !llvm.access.group !50
  %21 = zext i32 %.pre to i64
  %22 = zext i32 %19 to i64
  call void (ptr, i32, ptr, ...) @__kmpc_fork_call(ptr nonnull @2, i32 5, ptr nonnull @.omp_outlined..20, i64 %21, i64 %22, ptr %2, ptr %3, ptr %4), !llvm.access.group !50
  %23 = load i32, ptr %8, align 4, !tbaa !30, !llvm.access.group !50
  %24 = add nsw i32 %23, %20
  %25 = load i32, ptr %7, align 4, !tbaa !30, !llvm.access.group !50
  %.not = icmp sgt i32 %24, %25
  br i1 %.not, label %._crit_edge, label %.lr.ph..lr.ph_crit_edge, !llvm.loop !51

._crit_edge:                                      ; preds = %.lr.ph..lr.ph_crit_edge, %.lr.ph.preheader, %5
  call void @__kmpc_for_static_fini(ptr nonnull @3, i32 %10)
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %9) #7
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %8) #7
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %7) #7
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %6) #7
  ret void
}

; Function Attrs: alwaysinline norecurse nounwind uwtable
define internal void @.omp_outlined..20(ptr noalias nocapture noundef readonly %0, ptr noalias nocapture noundef readnone %1, i64 noundef %2, i64 noundef %3, ptr nocapture noundef %4, ptr nocapture noundef readonly %5, ptr nocapture noundef readonly %6) #6 {
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %8) #7
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %9) #7
  %12 = trunc i64 %2 to i32
  %13 = trunc i64 %3 to i32
  store i32 %12, ptr %8, align 4, !tbaa !30
  store i32 %13, ptr %9, align 4, !tbaa !30
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %10) #7
  store i32 1, ptr %10, align 4, !tbaa !30
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %11) #7
  store i32 0, ptr %11, align 4, !tbaa !30
  %14 = load i32, ptr %0, align 4, !tbaa !30
  call void @__kmpc_for_static_init_4(ptr nonnull @1, i32 %14, i32 34, ptr nonnull %11, ptr nonnull %8, ptr nonnull %9, ptr nonnull %10, i32 1, i32 1)
  %15 = load i32, ptr %9, align 4, !tbaa !30
  %16 = call i32 @llvm.smin.i32(i32 %15, i32 33554431)
  store i32 %16, ptr %9, align 4, !tbaa !30
  %17 = load i32, ptr %8, align 4, !tbaa !30
  %.not11 = icmp slt i32 %16, %17
  br i1 %.not11, label %._crit_edge, label %.lr.ph.preheader

.lr.ph.preheader:                                 ; preds = %7
  %18 = sext i32 %17 to i64
  %19 = add nsw i32 %16, 1
  %20 = add nsw i32 %16, 1
  %21 = sub i32 %20, %17
  %22 = sub i32 %16, %17
  %xtraiter = and i32 %21, 3
  %lcmp.mod.not = icmp eq i32 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.lr.ph.prol.loopexit, label %.lr.ph.prol

.lr.ph.prol:                                      ; preds = %.lr.ph.preheader, %.lr.ph.prol
  %indvars.iv.prol = phi i64 [ %indvars.iv.next.prol, %.lr.ph.prol ], [ %18, %.lr.ph.preheader ]
  %prol.iter = phi i32 [ %prol.iter.next, %.lr.ph.prol ], [ 0, %.lr.ph.preheader ]
  %23 = getelementptr inbounds i32, ptr %5, i64 %indvars.iv.prol
  %24 = load i32, ptr %23, align 4, !tbaa !30, !llvm.access.group !53
  %25 = sext i32 %24 to i64
  %26 = getelementptr inbounds i32, ptr %4, i64 %25
  %27 = getelementptr inbounds i32, ptr %6, i64 %indvars.iv.prol
  %28 = load i32, ptr %27, align 4, !tbaa !30, !llvm.access.group !53
  %29 = atomicrmw add ptr %26, i32 %28 monotonic, align 4, !llvm.access.group !53
  %indvars.iv.next.prol = add nsw i64 %indvars.iv.prol, 1
  %prol.iter.next = add i32 %prol.iter, 1
  %prol.iter.cmp.not = icmp eq i32 %prol.iter.next, %xtraiter
  br i1 %prol.iter.cmp.not, label %.lr.ph.prol.loopexit, label %.lr.ph.prol, !llvm.loop !54

.lr.ph.prol.loopexit:                             ; preds = %.lr.ph.prol, %.lr.ph.preheader
  %indvars.iv.unr = phi i64 [ %18, %.lr.ph.preheader ], [ %indvars.iv.next.prol, %.lr.ph.prol ]
  %30 = icmp ult i32 %22, 3
  br i1 %30, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %.lr.ph.prol.loopexit, %.lr.ph
  %indvars.iv = phi i64 [ %indvars.iv.next.3, %.lr.ph ], [ %indvars.iv.unr, %.lr.ph.prol.loopexit ]
  %31 = getelementptr inbounds i32, ptr %5, i64 %indvars.iv
  %32 = load i32, ptr %31, align 4, !tbaa !30, !llvm.access.group !53
  %33 = sext i32 %32 to i64
  %34 = getelementptr inbounds i32, ptr %4, i64 %33
  %35 = getelementptr inbounds i32, ptr %6, i64 %indvars.iv
  %36 = load i32, ptr %35, align 4, !tbaa !30, !llvm.access.group !53
  %37 = atomicrmw add ptr %34, i32 %36 monotonic, align 4, !llvm.access.group !53
  %indvars.iv.next = add nsw i64 %indvars.iv, 1
  %38 = getelementptr inbounds i32, ptr %5, i64 %indvars.iv.next
  %39 = load i32, ptr %38, align 4, !tbaa !30, !llvm.access.group !53
  %40 = sext i32 %39 to i64
  %41 = getelementptr inbounds i32, ptr %4, i64 %40
  %42 = getelementptr inbounds i32, ptr %6, i64 %indvars.iv.next
  %43 = load i32, ptr %42, align 4, !tbaa !30, !llvm.access.group !53
  %44 = atomicrmw add ptr %41, i32 %43 monotonic, align 4, !llvm.access.group !53
  %indvars.iv.next.1 = add nsw i64 %indvars.iv, 2
  %45 = getelementptr inbounds i32, ptr %5, i64 %indvars.iv.next.1
  %46 = load i32, ptr %45, align 4, !tbaa !30, !llvm.access.group !53
  %47 = sext i32 %46 to i64
  %48 = getelementptr inbounds i32, ptr %4, i64 %47
  %49 = getelementptr inbounds i32, ptr %6, i64 %indvars.iv.next.1
  %50 = load i32, ptr %49, align 4, !tbaa !30, !llvm.access.group !53
  %51 = atomicrmw add ptr %48, i32 %50 monotonic, align 4, !llvm.access.group !53
  %indvars.iv.next.2 = add nsw i64 %indvars.iv, 3
  %52 = getelementptr inbounds i32, ptr %5, i64 %indvars.iv.next.2
  %53 = load i32, ptr %52, align 4, !tbaa !30, !llvm.access.group !53
  %54 = sext i32 %53 to i64
  %55 = getelementptr inbounds i32, ptr %4, i64 %54
  %56 = getelementptr inbounds i32, ptr %6, i64 %indvars.iv.next.2
  %57 = load i32, ptr %56, align 4, !tbaa !30, !llvm.access.group !53
  %58 = atomicrmw add ptr %55, i32 %57 monotonic, align 4, !llvm.access.group !53
  %indvars.iv.next.3 = add nsw i64 %indvars.iv, 4
  %lftr.wideiv.3 = trunc i64 %indvars.iv.next.3 to i32
  %exitcond.not.3 = icmp eq i32 %19, %lftr.wideiv.3
  br i1 %exitcond.not.3, label %._crit_edge, label %.lr.ph, !llvm.loop !56

._crit_edge:                                      ; preds = %.lr.ph.prol.loopexit, %.lr.ph, %7
  call void @__kmpc_for_static_fini(ptr nonnull @3, i32 %14)
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %11) #7
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %10) #7
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %9) #7
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %8) #7
  ret void
}

; Function Attrs: nounwind
declare !callback !45 void @__kmpc_fork_teams(ptr, i32, ptr, ...) local_unnamed_addr #7

; Function Attrs: nounwind
declare void @__kmpc_push_target_tripcount_mapper(ptr, i64, i64) local_unnamed_addr #7

; Function Attrs: nounwind
declare i32 @__tgt_target_teams_mapper(ptr, i64, ptr, i32, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32) local_unnamed_addr #7

; Function Attrs: nounwind
declare void @__tgt_target_data_end_mapper(ptr, i64, i32, ptr, ptr, ptr, ptr, ptr, ptr) local_unnamed_addr #7

; Function Attrs: alwaysinline norecurse nounwind uwtable
define internal void @.omp_outlined..39(ptr noalias nocapture noundef readonly %0, ptr noalias nocapture noundef readnone %1, ptr noundef %2, ptr noundef %3, ptr noundef %4) #6 {
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %6) #7
  store i32 0, ptr %6, align 4, !tbaa !30
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %7) #7
  store i32 33554431, ptr %7, align 4, !tbaa !30
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %8) #7
  store i32 1, ptr %8, align 4, !tbaa !30
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %9) #7
  store i32 0, ptr %9, align 4, !tbaa !30
  %10 = load i32, ptr %0, align 4, !tbaa !30
  call void @__kmpc_for_static_init_4(ptr nonnull @3, i32 %10, i32 92, ptr nonnull %9, ptr nonnull %6, ptr nonnull %7, ptr nonnull %8, i32 1, i32 1)
  %11 = load i32, ptr %7, align 4, !tbaa !30
  %12 = call i32 @llvm.smin.i32(i32 %11, i32 33554431)
  store i32 %12, ptr %7, align 4, !tbaa !30
  %13 = load i32, ptr %6, align 4, !tbaa !30
  %.not7 = icmp sgt i32 %13, %12
  br i1 %.not7, label %._crit_edge, label %.lr.ph.preheader

.lr.ph.preheader:                                 ; preds = %5
  %14 = zext i32 %13 to i64
  %15 = zext i32 %12 to i64
  call void (ptr, i32, ptr, ...) @__kmpc_fork_call(ptr nonnull @2, i32 5, ptr nonnull @.omp_outlined..40, i64 %14, i64 %15, ptr %2, ptr %3, ptr %4), !llvm.access.group !58
  %16 = load i32, ptr %8, align 4, !tbaa !30, !llvm.access.group !58
  %17 = add nsw i32 %16, %13
  %18 = load i32, ptr %7, align 4, !tbaa !30, !llvm.access.group !58
  %.not9 = icmp sgt i32 %17, %18
  br i1 %.not9, label %._crit_edge, label %.lr.ph..lr.ph_crit_edge, !llvm.loop !59

.lr.ph..lr.ph_crit_edge:                          ; preds = %.lr.ph.preheader, %.lr.ph..lr.ph_crit_edge
  %19 = phi i32 [ %25, %.lr.ph..lr.ph_crit_edge ], [ %18, %.lr.ph.preheader ]
  %20 = phi i32 [ %24, %.lr.ph..lr.ph_crit_edge ], [ %17, %.lr.ph.preheader ]
  %.pre = load i32, ptr %6, align 4, !llvm.access.group !58
  %21 = zext i32 %.pre to i64
  %22 = zext i32 %19 to i64
  call void (ptr, i32, ptr, ...) @__kmpc_fork_call(ptr nonnull @2, i32 5, ptr nonnull @.omp_outlined..40, i64 %21, i64 %22, ptr %2, ptr %3, ptr %4), !llvm.access.group !58
  %23 = load i32, ptr %8, align 4, !tbaa !30, !llvm.access.group !58
  %24 = add nsw i32 %23, %20
  %25 = load i32, ptr %7, align 4, !tbaa !30, !llvm.access.group !58
  %.not = icmp sgt i32 %24, %25
  br i1 %.not, label %._crit_edge, label %.lr.ph..lr.ph_crit_edge, !llvm.loop !59

._crit_edge:                                      ; preds = %.lr.ph..lr.ph_crit_edge, %.lr.ph.preheader, %5
  call void @__kmpc_for_static_fini(ptr nonnull @3, i32 %10)
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %9) #7
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %8) #7
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %7) #7
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %6) #7
  ret void
}

; Function Attrs: alwaysinline norecurse nounwind uwtable
define internal void @.omp_outlined..40(ptr noalias nocapture noundef readonly %0, ptr noalias nocapture noundef readnone %1, i64 noundef %2, i64 noundef %3, ptr nocapture noundef %4, ptr nocapture noundef readonly %5, ptr nocapture noundef readonly %6) #6 {
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %8) #7
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %9) #7
  %12 = trunc i64 %2 to i32
  %13 = trunc i64 %3 to i32
  store i32 %12, ptr %8, align 4, !tbaa !30
  store i32 %13, ptr %9, align 4, !tbaa !30
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %10) #7
  store i32 1, ptr %10, align 4, !tbaa !30
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %11) #7
  store i32 0, ptr %11, align 4, !tbaa !30
  %14 = load i32, ptr %0, align 4, !tbaa !30
  call void @__kmpc_for_static_init_4(ptr nonnull @1, i32 %14, i32 34, ptr nonnull %11, ptr nonnull %8, ptr nonnull %9, ptr nonnull %10, i32 1, i32 1)
  %15 = load i32, ptr %9, align 4, !tbaa !30
  %16 = call i32 @llvm.smin.i32(i32 %15, i32 33554431)
  store i32 %16, ptr %9, align 4, !tbaa !30
  %17 = load i32, ptr %8, align 4, !tbaa !30
  %.not11 = icmp slt i32 %16, %17
  br i1 %.not11, label %._crit_edge, label %.lr.ph.preheader

.lr.ph.preheader:                                 ; preds = %7
  %18 = sext i32 %17 to i64
  %19 = add nsw i32 %16, 1
  %20 = add nsw i32 %16, 1
  %21 = sub i32 %20, %17
  %22 = sub i32 %16, %17
  %xtraiter = and i32 %21, 3
  %lcmp.mod.not = icmp eq i32 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.lr.ph.prol.loopexit, label %.lr.ph.prol

.lr.ph.prol:                                      ; preds = %.lr.ph.preheader, %.lr.ph.prol
  %indvars.iv.prol = phi i64 [ %indvars.iv.next.prol, %.lr.ph.prol ], [ %18, %.lr.ph.preheader ]
  %prol.iter = phi i32 [ %prol.iter.next, %.lr.ph.prol ], [ 0, %.lr.ph.preheader ]
  %23 = getelementptr inbounds i32, ptr %5, i64 %indvars.iv.prol
  %24 = load i32, ptr %23, align 4, !tbaa !30, !llvm.access.group !61
  %25 = shl nsw i32 %24, 4
  %26 = sext i32 %25 to i64
  %27 = getelementptr inbounds i32, ptr %4, i64 %26
  %28 = getelementptr inbounds i32, ptr %6, i64 %indvars.iv.prol
  %29 = load i32, ptr %28, align 4, !tbaa !30, !llvm.access.group !61
  %30 = atomicrmw add ptr %27, i32 %29 monotonic, align 4, !llvm.access.group !61
  %indvars.iv.next.prol = add nsw i64 %indvars.iv.prol, 1
  %prol.iter.next = add i32 %prol.iter, 1
  %prol.iter.cmp.not = icmp eq i32 %prol.iter.next, %xtraiter
  br i1 %prol.iter.cmp.not, label %.lr.ph.prol.loopexit, label %.lr.ph.prol, !llvm.loop !62

.lr.ph.prol.loopexit:                             ; preds = %.lr.ph.prol, %.lr.ph.preheader
  %indvars.iv.unr = phi i64 [ %18, %.lr.ph.preheader ], [ %indvars.iv.next.prol, %.lr.ph.prol ]
  %31 = icmp ult i32 %22, 3
  br i1 %31, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %.lr.ph.prol.loopexit, %.lr.ph
  %indvars.iv = phi i64 [ %indvars.iv.next.3, %.lr.ph ], [ %indvars.iv.unr, %.lr.ph.prol.loopexit ]
  %32 = getelementptr inbounds i32, ptr %5, i64 %indvars.iv
  %33 = load i32, ptr %32, align 4, !tbaa !30, !llvm.access.group !61
  %34 = shl nsw i32 %33, 4
  %35 = sext i32 %34 to i64
  %36 = getelementptr inbounds i32, ptr %4, i64 %35
  %37 = getelementptr inbounds i32, ptr %6, i64 %indvars.iv
  %38 = load i32, ptr %37, align 4, !tbaa !30, !llvm.access.group !61
  %39 = atomicrmw add ptr %36, i32 %38 monotonic, align 4, !llvm.access.group !61
  %indvars.iv.next = add nsw i64 %indvars.iv, 1
  %40 = getelementptr inbounds i32, ptr %5, i64 %indvars.iv.next
  %41 = load i32, ptr %40, align 4, !tbaa !30, !llvm.access.group !61
  %42 = shl nsw i32 %41, 4
  %43 = sext i32 %42 to i64
  %44 = getelementptr inbounds i32, ptr %4, i64 %43
  %45 = getelementptr inbounds i32, ptr %6, i64 %indvars.iv.next
  %46 = load i32, ptr %45, align 4, !tbaa !30, !llvm.access.group !61
  %47 = atomicrmw add ptr %44, i32 %46 monotonic, align 4, !llvm.access.group !61
  %indvars.iv.next.1 = add nsw i64 %indvars.iv, 2
  %48 = getelementptr inbounds i32, ptr %5, i64 %indvars.iv.next.1
  %49 = load i32, ptr %48, align 4, !tbaa !30, !llvm.access.group !61
  %50 = shl nsw i32 %49, 4
  %51 = sext i32 %50 to i64
  %52 = getelementptr inbounds i32, ptr %4, i64 %51
  %53 = getelementptr inbounds i32, ptr %6, i64 %indvars.iv.next.1
  %54 = load i32, ptr %53, align 4, !tbaa !30, !llvm.access.group !61
  %55 = atomicrmw add ptr %52, i32 %54 monotonic, align 4, !llvm.access.group !61
  %indvars.iv.next.2 = add nsw i64 %indvars.iv, 3
  %56 = getelementptr inbounds i32, ptr %5, i64 %indvars.iv.next.2
  %57 = load i32, ptr %56, align 4, !tbaa !30, !llvm.access.group !61
  %58 = shl nsw i32 %57, 4
  %59 = sext i32 %58 to i64
  %60 = getelementptr inbounds i32, ptr %4, i64 %59
  %61 = getelementptr inbounds i32, ptr %6, i64 %indvars.iv.next.2
  %62 = load i32, ptr %61, align 4, !tbaa !30, !llvm.access.group !61
  %63 = atomicrmw add ptr %60, i32 %62 monotonic, align 4, !llvm.access.group !61
  %indvars.iv.next.3 = add nsw i64 %indvars.iv, 4
  %lftr.wideiv.3 = trunc i64 %indvars.iv.next.3 to i32
  %exitcond.not.3 = icmp eq i32 %19, %lftr.wideiv.3
  br i1 %exitcond.not.3, label %._crit_edge, label %.lr.ph, !llvm.loop !63

._crit_edge:                                      ; preds = %.lr.ph.prol.loopexit, %.lr.ph, %7
  call void @__kmpc_for_static_fini(ptr nonnull @3, i32 %14)
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %11) #7
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %10) #7
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %9) #7
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %8) #7
  ret void
}

declare noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8), ptr noundef, i64 noundef) local_unnamed_addr #0

declare void @_ZNSt9basic_iosIcSt11char_traitsIcEE5clearESt12_Ios_Iostate(ptr noundef nonnull align 8 dereferenceable(264), i32 noundef) local_unnamed_addr #0

; Function Attrs: argmemonly mustprogress nofree nounwind readonly willreturn
declare i64 @strlen(ptr nocapture noundef) local_unnamed_addr #9

declare noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo3putEc(ptr noundef nonnull align 8 dereferenceable(8), i8 noundef signext) local_unnamed_addr #0

declare noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo5flushEv(ptr noundef nonnull align 8 dereferenceable(8)) local_unnamed_addr #0

; Function Attrs: noreturn
declare void @_ZSt16__throw_bad_castv() local_unnamed_addr #10

declare void @_ZNKSt5ctypeIcE13_M_widen_initEv(ptr noundef nonnull align 8 dereferenceable(570)) local_unnamed_addr #0

declare noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo9_M_insertIdEERSoT_(ptr noundef nonnull align 8 dereferenceable(8), double noundef) local_unnamed_addr #0

; Function Attrs: uwtable
define internal void @_GLOBAL__sub_I_test_openmp.C() #11 section ".text.startup" {
  tail call void @_ZNSt8ios_base4InitC1Ev(ptr noundef nonnull align 1 dereferenceable(1) @_ZStL8__ioinit)
  %1 = tail call i32 @__cxa_atexit(ptr nonnull @_ZNSt8ios_base4InitD1Ev, ptr nonnull @_ZStL8__ioinit, ptr nonnull @__dso_handle) #7
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @.omp_offloading.requires_reg() #12 section ".text.startup" {
  tail call void @__tgt_register_requires(i64 1)
  ret void
}

; Function Attrs: nounwind
declare void @__tgt_register_requires(i64) local_unnamed_addr #7

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.smin.i32(i32, i32) #13

; Function Attrs: inaccessiblememonly nofree nounwind willreturn allocsize(0,1)
declare noalias noundef ptr @calloc(i64 noundef, i64 noundef) local_unnamed_addr #14

attributes #0 = { "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nounwind "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { nofree nounwind }
attributes #3 = { norecurse uwtable "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { argmemonly mustprogress nocallback nofree nosync nounwind willreturn }
attributes #5 = { inaccessiblememonly mustprogress nofree nounwind willreturn allocsize(0) "alloc-family"="malloc" "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { alwaysinline norecurse nounwind uwtable "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { nounwind }
attributes #8 = { noreturn nounwind "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #9 = { argmemonly mustprogress nofree nounwind readonly willreturn "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #10 = { noreturn "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #11 = { uwtable "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #12 = { nounwind uwtable "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #13 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #14 = { inaccessiblememonly nofree nounwind willreturn allocsize(0,1) "alloc-family"="malloc" }
attributes #15 = { noreturn }
attributes #16 = { nounwind allocsize(0) }
attributes #17 = { noreturn nounwind }

!omp_offload.info = !{!0, !1}
!llvm.module.flags = !{!2, !3, !4, !5, !6}
!llvm.ident = !{!7}
!nvvm.annotations = !{}

!0 = !{i32 0, i32 66306, i32 74322520, !"main", i32 110, i32 0}
!1 = !{i32 0, i32 66306, i32 74322520, !"main", i32 143, i32 1}
!2 = !{i32 1, !"wchar_size", i32 4}
!3 = !{i32 7, !"openmp", i32 50}
!4 = !{i32 7, !"PIC Level", i32 2}
!5 = !{i32 7, !"PIE Level", i32 2}
!6 = !{i32 7, !"uwtable", i32 2}
!7 = !{!"clang version 15.0.0 (https://github.com/llvm/llvm-project.git 22c6e7b277fbe6c65216d8c7a690d53c8122cb42)"}
!8 = !{!9, !10, i64 8}
!9 = !{!"_ZTSSt9type_info", !10, i64 8}
!10 = !{!"any pointer", !11, i64 0}
!11 = !{!"omnipotent char", !12, i64 0}
!12 = !{!"Simple C++ TBAA"}
!13 = !{!11, !11, i64 0}
!14 = !{!15, !15, i64 0}
!15 = !{!"vtable pointer", !12, i64 0}
!16 = !{!17, !20, i64 32}
!17 = !{!"_ZTSSt8ios_base", !18, i64 8, !18, i64 16, !19, i64 24, !20, i64 28, !20, i64 32, !10, i64 40, !21, i64 48, !11, i64 64, !22, i64 192, !10, i64 200, !23, i64 208}
!18 = !{!"long", !11, i64 0}
!19 = !{!"_ZTSSt13_Ios_Fmtflags", !11, i64 0}
!20 = !{!"_ZTSSt12_Ios_Iostate", !11, i64 0}
!21 = !{!"_ZTSNSt8ios_base6_WordsE", !10, i64 0, !18, i64 8}
!22 = !{!"int", !11, i64 0}
!23 = !{!"_ZTSSt6locale", !10, i64 0}
!24 = !{!25, !10, i64 240}
!25 = !{!"_ZTSSt9basic_iosIcSt11char_traitsIcEE", !10, i64 216, !11, i64 224, !26, i64 225, !10, i64 232, !10, i64 240, !10, i64 248, !10, i64 256}
!26 = !{!"bool", !11, i64 0}
!27 = !{!28, !11, i64 56}
!28 = !{!"_ZTSSt5ctypeIcE", !10, i64 16, !26, i64 24, !10, i64 32, !10, i64 40, !10, i64 48, !11, i64 56, !11, i64 57, !11, i64 313, !11, i64 569}
!29 = !{!10, !10, i64 0}
!30 = !{!22, !22, i64 0}
!31 = distinct !{!31, !32}
!32 = !{!"llvm.loop.mustprogress"}
!33 = distinct !{!33, !32}
!34 = distinct !{!34, !32}
!35 = distinct !{!35, !32}
!36 = distinct !{!36, !32}
!37 = distinct !{!37, !32}
!38 = distinct !{!38, !32}
!39 = distinct !{!39, !32}
!40 = distinct !{!40, !32}
!41 = distinct !{}
!42 = distinct !{!42, !43, !44}
!43 = !{!"llvm.loop.parallel_accesses", !41}
!44 = !{!"llvm.loop.vectorize.enable", i1 true}
!45 = !{!46}
!46 = !{i64 2, i64 -1, i64 -1, i1 true}
!47 = distinct !{}
!48 = distinct !{!48, !49, !44}
!49 = !{!"llvm.loop.parallel_accesses", !47}
!50 = distinct !{}
!51 = distinct !{!51, !52, !44}
!52 = !{!"llvm.loop.parallel_accesses", !50}
!53 = distinct !{}
!54 = distinct !{!54, !55}
!55 = !{!"llvm.loop.unroll.disable"}
!56 = distinct !{!56, !57, !44}
!57 = !{!"llvm.loop.parallel_accesses", !53}
!58 = distinct !{}
!59 = distinct !{!59, !60, !44}
!60 = !{!"llvm.loop.parallel_accesses", !58}
!61 = distinct !{}
!62 = distinct !{!62, !55}
!63 = distinct !{!63, !64, !44}
!64 = !{!"llvm.loop.parallel_accesses", !61}
