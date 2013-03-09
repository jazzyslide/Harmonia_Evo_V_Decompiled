.class public Lcom/htc/painting/engine/CacheBitmapWorker;
.super Ljava/lang/Object;
.source "CacheBitmapWorker.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/htc/painting/engine/CacheBitmapWorker$CreateCacheTask;,
        Lcom/htc/painting/engine/CacheBitmapWorker$PartialUpdateCacheTask;,
        Lcom/htc/painting/engine/CacheBitmapWorker$OnProgressiveTaskListener;
    }
.end annotation


# static fields
.field private static final LOG_TAG:Ljava/lang/String; = "CacheWorker"

.field private static final MSG_CHECK_TASK_END:I = 0x303a

.field private static final MSG_RUN_CACHE_TASK:I = 0x303b

.field private static final MSG_RUN_TASK:I = 0x3039

.field private static mCacheSizeRatio:[F


# instance fields
.field private mCachingState:I

.field private mExecutingInterruptRef:Lcom/htc/painting/engine/InterruptRef;

.field mFreeze:Z

.field private mHandler:Landroid/os/Handler;

.field private mListeners:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/htc/painting/engine/HtcPaintingView$OnCacheListener;",
            ">;"
        }
    .end annotation
.end field

.field private mRefData:Lcom/htc/painting/engine/cachebitmap/CacheBitmapData;

.field private mRequests:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set",
            "<",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation
.end field

.field mRunningTask:Lcom/htc/painting/engine/cachebitmap/CacheTask;

.field private mWorker:Landroid/os/HandlerThread;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/4 v0, 0x2

    new-array v0, v0, [F

    sput-object v0, Lcom/htc/painting/engine/CacheBitmapWorker;->mCacheSizeRatio:[F

    return-void
.end method

.method public constructor <init>(FF)V
    .locals 3

    const/4 v2, 0x0

    const/4 v1, 0x0

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/TreeSet;

    invoke-direct {v0}, Ljava/util/TreeSet;-><init>()V

    invoke-static {v0}, Ljava/util/Collections;->synchronizedSortedSet(Ljava/util/SortedSet;)Ljava/util/SortedSet;

    move-result-object v0

    iput-object v0, p0, Lcom/htc/painting/engine/CacheBitmapWorker;->mRequests:Ljava/util/Set;

    iput v2, p0, Lcom/htc/painting/engine/CacheBitmapWorker;->mCachingState:I

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/htc/painting/engine/CacheBitmapWorker;->mListeners:Ljava/util/List;

    iput-object v1, p0, Lcom/htc/painting/engine/CacheBitmapWorker;->mRefData:Lcom/htc/painting/engine/cachebitmap/CacheBitmapData;

    iput-object v1, p0, Lcom/htc/painting/engine/CacheBitmapWorker;->mExecutingInterruptRef:Lcom/htc/painting/engine/InterruptRef;

    iput-boolean v2, p0, Lcom/htc/painting/engine/CacheBitmapWorker;->mFreeze:Z

    iput-object v1, p0, Lcom/htc/painting/engine/CacheBitmapWorker;->mRunningTask:Lcom/htc/painting/engine/cachebitmap/CacheTask;

    invoke-virtual {p0, p1, p2}, Lcom/htc/painting/engine/CacheBitmapWorker;->setCacheSizeRatio(FF)V

    return-void
.end method

.method static synthetic access$000()[F
    .locals 1

    sget-object v0, Lcom/htc/painting/engine/CacheBitmapWorker;->mCacheSizeRatio:[F

    return-object v0
.end method

.method static synthetic access$100(Lcom/htc/painting/engine/CacheBitmapWorker;J)Z
    .locals 1

    invoke-direct {p0, p1, p2}, Lcom/htc/painting/engine/CacheBitmapWorker;->taskValid(J)Z

    move-result v0

    return v0
.end method

.method static synthetic access$200(Lcom/htc/painting/engine/CacheBitmapWorker;)V
    .locals 0

    invoke-direct {p0}, Lcom/htc/painting/engine/CacheBitmapWorker;->clearInterruptRef()V

    return-void
.end method

.method static synthetic access$300(Lcom/htc/painting/engine/CacheBitmapWorker;)Lcom/htc/painting/engine/InterruptRef;
    .locals 1

    iget-object v0, p0, Lcom/htc/painting/engine/CacheBitmapWorker;->mExecutingInterruptRef:Lcom/htc/painting/engine/InterruptRef;

    return-object v0
.end method

.method static synthetic access$302(Lcom/htc/painting/engine/CacheBitmapWorker;Lcom/htc/painting/engine/InterruptRef;)Lcom/htc/painting/engine/InterruptRef;
    .locals 0

    iput-object p1, p0, Lcom/htc/painting/engine/CacheBitmapWorker;->mExecutingInterruptRef:Lcom/htc/painting/engine/InterruptRef;

    return-object p1
.end method

.method static synthetic access$400(Lcom/htc/painting/engine/CacheBitmapWorker;I)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/htc/painting/engine/CacheBitmapWorker;->changeStateAndNotify(I)V

    return-void
.end method

.method static synthetic access$500(Lcom/htc/painting/engine/CacheBitmapWorker;Lcom/htc/painting/engine/cachebitmap/CacheTask;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/htc/painting/engine/CacheBitmapWorker;->onTaskEnd(Lcom/htc/painting/engine/cachebitmap/CacheTask;)V

    return-void
.end method

.method static synthetic access$600(Lcom/htc/painting/engine/CacheBitmapWorker;)Ljava/util/Set;
    .locals 1

    iget-object v0, p0, Lcom/htc/painting/engine/CacheBitmapWorker;->mRequests:Ljava/util/Set;

    return-object v0
.end method

.method static synthetic access$700(Lcom/htc/painting/engine/CacheBitmapWorker;)I
    .locals 1

    iget v0, p0, Lcom/htc/painting/engine/CacheBitmapWorker;->mCachingState:I

    return v0
.end method

.method private changeStateAndNotify(I)V
    .locals 8

    iget v5, p0, Lcom/htc/painting/engine/CacheBitmapWorker;->mCachingState:I

    if-ne p1, v5, :cond_1

    :cond_0
    return-void

    :cond_1
    iget v4, p0, Lcom/htc/painting/engine/CacheBitmapWorker;->mCachingState:I

    iput p1, p0, Lcom/htc/painting/engine/CacheBitmapWorker;->mCachingState:I

    const-string v5, "CacheWorker"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "CacheBitmapStateChanged to "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/htc/painting/util/PaintingLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v3, p0, Lcom/htc/painting/engine/CacheBitmapWorker;->mListeners:Ljava/util/List;

    if-eqz v3, :cond_0

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v5

    if-eqz v5, :cond_0

    new-instance v0, Ljava/util/ArrayList;

    iget-object v5, p0, Lcom/htc/painting/engine/CacheBitmapWorker;->mListeners:Ljava/util/List;

    invoke-direct {v0, v5}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/htc/painting/engine/HtcPaintingView$OnCacheListener;

    invoke-interface {v2, v4, p1}, Lcom/htc/painting/engine/HtcPaintingView$OnCacheListener;->onCacheStateChanged(II)V

    goto :goto_0
.end method

.method private clearInterruptRef()V
    .locals 1

    iget-object v0, p0, Lcom/htc/painting/engine/CacheBitmapWorker;->mExecutingInterruptRef:Lcom/htc/painting/engine/InterruptRef;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/htc/painting/engine/CacheBitmapWorker;->mExecutingInterruptRef:Lcom/htc/painting/engine/InterruptRef;

    invoke-virtual {v0}, Lcom/htc/painting/engine/InterruptRef;->doInterrupt()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/htc/painting/engine/CacheBitmapWorker;->mExecutingInterruptRef:Lcom/htc/painting/engine/InterruptRef;

    :cond_0
    return-void
.end method

.method private needToCreateCache(Lcom/htc/painting/engine/HtcPainting;[I)Z
    .locals 4

    const/4 v0, 0x0

    :goto_0
    array-length v3, p2

    if-ge v0, v3, :cond_1

    aget v3, p2, v0

    invoke-virtual {p1, v3}, Lcom/htc/painting/engine/HtcPainting;->getViewPort(I)Lcom/htc/painting/engine/ViewPort;

    move-result-object v2

    if-eqz v2, :cond_0

    invoke-virtual {v2}, Lcom/htc/painting/engine/ViewPort;->getRectF()Landroid/graphics/RectF;

    move-result-object v1

    if-eqz v1, :cond_0

    invoke-virtual {v1}, Landroid/graphics/RectF;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_0

    const/4 v3, 0x1

    :goto_1
    return v3

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    const/4 v3, 0x0

    goto :goto_1
.end method

.method private onTaskEnd(Lcom/htc/painting/engine/cachebitmap/CacheTask;)V
    .locals 5

    iget-object v1, p0, Lcom/htc/painting/engine/CacheBitmapWorker;->mRequests:Ljava/util/Set;

    invoke-virtual {p1}, Lcom/htc/painting/engine/cachebitmap/CacheTask;->getRequestKey()J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    const-string v1, "CacheWorker"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "destroy invalid request task with key: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p1}, Lcom/htc/painting/engine/cachebitmap/CacheTask;->getRequestKey()J

    move-result-wide v3

    invoke-virtual {v2, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/htc/painting/util/PaintingLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    instance-of v1, p1, Lcom/htc/painting/engine/CacheBitmapWorker$CreateCacheTask;

    if-eqz v1, :cond_0

    invoke-virtual {p1}, Lcom/htc/painting/engine/cachebitmap/CacheTask;->getResult()I

    move-result v1

    const/4 v2, 0x4

    if-eq v1, v2, :cond_0

    move-object v0, p1

    check-cast v0, Lcom/htc/painting/engine/CacheBitmapWorker$CreateCacheTask;

    iget-object v1, v0, Lcom/htc/painting/engine/CacheBitmapWorker$CreateCacheTask;->mData:Lcom/htc/painting/engine/cachebitmap/CacheBitmapData;

    if-eqz v1, :cond_0

    iget-object v1, v0, Lcom/htc/painting/engine/CacheBitmapWorker$CreateCacheTask;->mData:Lcom/htc/painting/engine/cachebitmap/CacheBitmapData;

    invoke-virtual {v1}, Lcom/htc/painting/engine/cachebitmap/CacheBitmapData;->destroy()V

    :cond_0
    return-void
.end method

.method private taskValid(J)Z
    .locals 2

    iget-object v0, p0, Lcom/htc/painting/engine/CacheBitmapWorker;->mRequests:Ljava/util/Set;

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method


# virtual methods
.method public addPartialUpdateTask(JLcom/htc/painting/engine/CacheBitmapWorker$OnProgressiveTaskListener;Lcom/htc/painting/engine/HtcPainting;[ILcom/htc/painting/engine/stroke/Stroke;Lcom/htc/painting/engine/ViewPort;)V
    .locals 10

    iget-boolean v1, p0, Lcom/htc/painting/engine/CacheBitmapWorker;->mFreeze:Z

    if-eqz v1, :cond_1

    const-string v1, "CacheWorker"

    const-string v2, "CacheWorker is in freezing state"

    invoke-static {v1, v2}, Lcom/htc/painting/util/PaintingLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v1, p0, Lcom/htc/painting/engine/CacheBitmapWorker;->mRunningTask:Lcom/htc/painting/engine/cachebitmap/CacheTask;

    if-eqz v1, :cond_0

    new-instance v0, Lcom/htc/painting/engine/CacheBitmapWorker$PartialUpdateCacheTask;

    iget-object v7, p0, Lcom/htc/painting/engine/CacheBitmapWorker;->mRefData:Lcom/htc/painting/engine/cachebitmap/CacheBitmapData;

    move-object v1, p0

    move-wide v2, p1

    move-object v4, p3

    move-object v5, p4

    move-object v6, p5

    move-object/from16 v8, p6

    move-object/from16 v9, p7

    invoke-direct/range {v0 .. v9}, Lcom/htc/painting/engine/CacheBitmapWorker$PartialUpdateCacheTask;-><init>(Lcom/htc/painting/engine/CacheBitmapWorker;JLcom/htc/painting/engine/CacheBitmapWorker$OnProgressiveTaskListener;Lcom/htc/painting/engine/HtcPainting;[ILcom/htc/painting/engine/cachebitmap/CacheBitmapData;Lcom/htc/painting/engine/stroke/Stroke;Lcom/htc/painting/engine/ViewPort;)V

    const-string v1, "CacheWorker"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, " add sub Task , key "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/htc/painting/util/PaintingLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v1, p0, Lcom/htc/painting/engine/CacheBitmapWorker;->mRunningTask:Lcom/htc/painting/engine/cachebitmap/CacheTask;

    invoke-virtual {v1, v0}, Lcom/htc/painting/engine/cachebitmap/CacheTask;->addSubTask(Lcom/htc/painting/engine/cachebitmap/CacheTask;)Z

    goto :goto_0
.end method

.method public cancel(J)V
    .locals 2

    iget-object v0, p0, Lcom/htc/painting/engine/CacheBitmapWorker;->mRequests:Ljava/util/Set;

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    return-void
.end method

.method public cancelAll()V
    .locals 1

    iget-object v0, p0, Lcom/htc/painting/engine/CacheBitmapWorker;->mRequests:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->clear()V

    return-void
.end method

.method public createCache(JLcom/htc/painting/engine/CacheBitmapWorker$OnProgressiveTaskListener;IILcom/htc/painting/engine/HtcPainting;[I)V
    .locals 19

    const-string v3, "CacheWorker"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "created task with key: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-wide/from16 v0, p1

    invoke-virtual {v4, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/htc/painting/util/PaintingLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget-boolean v3, v0, Lcom/htc/painting/engine/CacheBitmapWorker;->mFreeze:Z

    if-eqz v3, :cond_1

    const-string v3, "CacheWorker"

    const-string v4, "CacheWorker is in freezing state"

    invoke-static {v3, v4}, Lcom/htc/painting/util/PaintingLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    :goto_0
    return-void

    :cond_1
    move-object/from16 v0, p0

    move-object/from16 v1, p6

    move-object/from16 v2, p7

    invoke-direct {v0, v1, v2}, Lcom/htc/painting/engine/CacheBitmapWorker;->needToCreateCache(Lcom/htc/painting/engine/HtcPainting;[I)Z

    move-result v15

    if-eqz v15, :cond_0

    const/4 v13, 0x0

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/htc/painting/engine/CacheBitmapWorker;->mRunningTask:Lcom/htc/painting/engine/cachebitmap/CacheTask;

    if-eqz v3, :cond_2

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/htc/painting/engine/CacheBitmapWorker;->mRunningTask:Lcom/htc/painting/engine/cachebitmap/CacheTask;

    invoke-virtual {v3}, Lcom/htc/painting/engine/cachebitmap/CacheTask;->getRequestKey()J

    move-result-wide v3

    cmp-long v3, v3, p1

    if-nez v3, :cond_2

    const/4 v13, 0x1

    const-string v3, "CacheWorker"

    const-string v4, " Task is running, won\'t post new task"

    invoke-static {v3, v4}, Lcom/htc/painting/util/PaintingLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    :goto_1
    if-nez v13, :cond_0

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/htc/painting/engine/CacheBitmapWorker;->mRequests:Ljava/util/Set;

    invoke-static/range {p1 .. p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    invoke-interface {v3, v4}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    move-result v16

    if-eqz v16, :cond_0

    const-string v3, "CacheWorker"

    const-string v4, " Post new Task "

    invoke-static {v3, v4}, Lcom/htc/painting/util/PaintingLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/painting/engine/CacheBitmapWorker;->mHandler:Landroid/os/Handler;

    move-object/from16 v17, v0

    const/16 v18, 0x3039

    new-instance v3, Lcom/htc/painting/engine/CacheBitmapWorker$CreateCacheTask;

    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/htc/painting/engine/CacheBitmapWorker;->mRefData:Lcom/htc/painting/engine/cachebitmap/CacheBitmapData;

    move-object/from16 v4, p0

    move-wide/from16 v5, p1

    move-object/from16 v7, p3

    move/from16 v8, p4

    move/from16 v9, p5

    move-object/from16 v10, p6

    move-object/from16 v11, p7

    invoke-direct/range {v3 .. v12}, Lcom/htc/painting/engine/CacheBitmapWorker$CreateCacheTask;-><init>(Lcom/htc/painting/engine/CacheBitmapWorker;JLcom/htc/painting/engine/CacheBitmapWorker$OnProgressiveTaskListener;IILcom/htc/painting/engine/HtcPainting;[ILcom/htc/painting/engine/cachebitmap/CacheBitmapData;)V

    move-object/from16 v0, v17

    move/from16 v1, v18

    invoke-virtual {v0, v1, v3}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v14

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/htc/painting/engine/CacheBitmapWorker;->mHandler:Landroid/os/Handler;

    invoke-virtual {v3, v14}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    goto :goto_0

    :cond_2
    invoke-virtual/range {p0 .. p0}, Lcom/htc/painting/engine/CacheBitmapWorker;->cancelAll()V

    invoke-virtual/range {p0 .. p0}, Lcom/htc/painting/engine/CacheBitmapWorker;->interrupt()Z

    const-string v3, "CacheWorker"

    const-string v4, " Clear all task and may abort current task"

    invoke-static {v3, v4}, Lcom/htc/painting/util/PaintingLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1
.end method

.method public freeze()V
    .locals 1

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/htc/painting/engine/CacheBitmapWorker;->mFreeze:Z

    invoke-virtual {p0}, Lcom/htc/painting/engine/CacheBitmapWorker;->cancelAll()V

    return-void
.end method

.method public declared-synchronized interrupt()Z
    .locals 1

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/htc/painting/engine/CacheBitmapWorker;->mExecutingInterruptRef:Lcom/htc/painting/engine/InterruptRef;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/htc/painting/engine/CacheBitmapWorker;->mExecutingInterruptRef:Lcom/htc/painting/engine/InterruptRef;

    invoke-virtual {v0}, Lcom/htc/painting/engine/InterruptRef;->doInterrupt()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/4 v0, 0x1

    :goto_0
    monitor-exit p0

    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public partialUpdateCache(JLcom/htc/painting/engine/CacheBitmapWorker$OnProgressiveTaskListener;Lcom/htc/painting/engine/HtcPainting;[ILcom/htc/painting/engine/stroke/Stroke;Lcom/htc/painting/engine/ViewPort;)V
    .locals 13

    iget-boolean v0, p0, Lcom/htc/painting/engine/CacheBitmapWorker;->mFreeze:Z

    if-eqz v0, :cond_0

    const-string v0, "CacheWorker"

    const-string v1, "CacheWorker is in freezing state"

    invoke-static {v0, v1}, Lcom/htc/painting/util/PaintingLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    :goto_0
    return-void

    :cond_0
    iget-object v11, p0, Lcom/htc/painting/engine/CacheBitmapWorker;->mHandler:Landroid/os/Handler;

    const/16 v12, 0x303b

    new-instance v0, Lcom/htc/painting/engine/CacheBitmapWorker$PartialUpdateCacheTask;

    iget-object v7, p0, Lcom/htc/painting/engine/CacheBitmapWorker;->mRefData:Lcom/htc/painting/engine/cachebitmap/CacheBitmapData;

    move-object v1, p0

    move-wide v2, p1

    move-object/from16 v4, p3

    move-object/from16 v5, p4

    move-object/from16 v6, p5

    move-object/from16 v8, p6

    move-object/from16 v9, p7

    invoke-direct/range {v0 .. v9}, Lcom/htc/painting/engine/CacheBitmapWorker$PartialUpdateCacheTask;-><init>(Lcom/htc/painting/engine/CacheBitmapWorker;JLcom/htc/painting/engine/CacheBitmapWorker$OnProgressiveTaskListener;Lcom/htc/painting/engine/HtcPainting;[ILcom/htc/painting/engine/cachebitmap/CacheBitmapData;Lcom/htc/painting/engine/stroke/Stroke;Lcom/htc/painting/engine/ViewPort;)V

    invoke-virtual {v11, v12, v0}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v10

    iget-object v0, p0, Lcom/htc/painting/engine/CacheBitmapWorker;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, v10}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    goto :goto_0
.end method

.method removeOnCacheListener(Lcom/htc/painting/engine/HtcPaintingView$OnCacheListener;)V
    .locals 1

    if-eqz p1, :cond_0

    iget-object v0, p0, Lcom/htc/painting/engine/CacheBitmapWorker;->mListeners:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    :cond_0
    return-void
.end method

.method public setCacheSizeRatio(FF)V
    .locals 2

    sget-object v0, Lcom/htc/painting/engine/CacheBitmapWorker;->mCacheSizeRatio:[F

    const/4 v1, 0x0

    aput p1, v0, v1

    sget-object v0, Lcom/htc/painting/engine/CacheBitmapWorker;->mCacheSizeRatio:[F

    const/4 v1, 0x1

    aput p2, v0, v1

    return-void
.end method

.method setOnCacheListener(Lcom/htc/painting/engine/HtcPaintingView$OnCacheListener;)V
    .locals 1

    if-eqz p1, :cond_0

    iget-object v0, p0, Lcom/htc/painting/engine/CacheBitmapWorker;->mListeners:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_0
    return-void
.end method

.method public setRefData(Lcom/htc/painting/engine/cachebitmap/CacheBitmapData;)V
    .locals 0

    iput-object p1, p0, Lcom/htc/painting/engine/CacheBitmapWorker;->mRefData:Lcom/htc/painting/engine/cachebitmap/CacheBitmapData;

    return-void
.end method

.method public declared-synchronized start()V
    .locals 2

    monitor-enter p0

    :try_start_0
    new-instance v0, Landroid/os/HandlerThread;

    const-string v1, "CacheBitmapWorker"

    invoke-direct {v0, v1}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/htc/painting/engine/CacheBitmapWorker;->mWorker:Landroid/os/HandlerThread;

    iget-object v0, p0, Lcom/htc/painting/engine/CacheBitmapWorker;->mWorker:Landroid/os/HandlerThread;

    invoke-virtual {v0}, Landroid/os/HandlerThread;->start()V

    new-instance v0, Lcom/htc/painting/engine/CacheBitmapWorker$1;

    iget-object v1, p0, Lcom/htc/painting/engine/CacheBitmapWorker;->mWorker:Landroid/os/HandlerThread;

    invoke-virtual {v1}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lcom/htc/painting/engine/CacheBitmapWorker$1;-><init>(Lcom/htc/painting/engine/CacheBitmapWorker;Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/htc/painting/engine/CacheBitmapWorker;->mHandler:Landroid/os/Handler;

    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/htc/painting/engine/CacheBitmapWorker;->changeStateAndNotify(I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized stop()V
    .locals 1

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/htc/painting/engine/CacheBitmapWorker;->mWorker:Landroid/os/HandlerThread;

    invoke-virtual {v0}, Landroid/os/HandlerThread;->quit()Z

    iget-object v0, p0, Lcom/htc/painting/engine/CacheBitmapWorker;->mWorker:Landroid/os/HandlerThread;

    invoke-virtual {v0}, Landroid/os/HandlerThread;->interrupt()V

    iget-object v0, p0, Lcom/htc/painting/engine/CacheBitmapWorker;->mRequests:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->clear()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/htc/painting/engine/CacheBitmapWorker;->mWorker:Landroid/os/HandlerThread;

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/htc/painting/engine/CacheBitmapWorker;->mHandler:Landroid/os/Handler;

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/htc/painting/engine/CacheBitmapWorker;->changeStateAndNotify(I)V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/htc/painting/engine/CacheBitmapWorker;->mRefData:Lcom/htc/painting/engine/cachebitmap/CacheBitmapData;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public unFreeze()V
    .locals 1

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/htc/painting/engine/CacheBitmapWorker;->mFreeze:Z

    return-void
.end method
