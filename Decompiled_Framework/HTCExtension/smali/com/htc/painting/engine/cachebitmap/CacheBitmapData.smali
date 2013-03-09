.class public Lcom/htc/painting/engine/cachebitmap/CacheBitmapData;
.super Ljava/lang/Object;
.source "CacheBitmapData.java"

# interfaces
.implements Lcom/htc/painting/engine/cachebitmap/ICacheBitmapData;


# static fields
.field private static final TAG:Ljava/lang/String; = "CacheBitmapData"


# instance fields
.field private mBitmap:Landroid/graphics/Bitmap;

.field private mCanvas:Landroid/graphics/Canvas;

.field private final mCanvasMatrixInverse:Landroid/graphics/Matrix;

.field private final mCreateTime:J

.field private mDrawingStamp:J

.field private mIsDestroyed:Z

.field private mIsDummyData:Z

.field private mModifyTime:J

.field private final mOriginalMatrix:Landroid/graphics/Matrix;

.field private mRecords:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/htc/painting/engine/cachebitmap/CacheBitmapDrawingRecord;",
            ">;"
        }
    .end annotation
.end field

.field private mRect:Landroid/graphics/RectF;


# direct methods
.method public constructor <init>(IIII[Lcom/htc/painting/engine/cachebitmap/CacheBitmapDrawingRecord;)V
    .locals 6

    const/4 v4, 0x0

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    const/4 v3, 0x0

    iput-object v3, p0, Lcom/htc/painting/engine/cachebitmap/CacheBitmapData;->mBitmap:Landroid/graphics/Bitmap;

    iput-boolean v4, p0, Lcom/htc/painting/engine/cachebitmap/CacheBitmapData;->mIsDummyData:Z

    iput-boolean v4, p0, Lcom/htc/painting/engine/cachebitmap/CacheBitmapData;->mIsDestroyed:Z

    new-instance v3, Landroid/graphics/Matrix;

    invoke-direct {v3}, Landroid/graphics/Matrix;-><init>()V

    iput-object v3, p0, Lcom/htc/painting/engine/cachebitmap/CacheBitmapData;->mCanvasMatrixInverse:Landroid/graphics/Matrix;

    new-instance v3, Landroid/graphics/Matrix;

    invoke-direct {v3}, Landroid/graphics/Matrix;-><init>()V

    iput-object v3, p0, Lcom/htc/painting/engine/cachebitmap/CacheBitmapData;->mOriginalMatrix:Landroid/graphics/Matrix;

    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    iput-object v3, p0, Lcom/htc/painting/engine/cachebitmap/CacheBitmapData;->mRecords:Ljava/util/ArrayList;

    if-lt p3, p1, :cond_0

    if-ge p4, p2, :cond_1

    :cond_0
    new-instance v3, Ljava/lang/IllegalArgumentException;

    const-string v4, "Cache size must be greater or equal to screen size!"

    invoke-direct {v3, v4}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v3

    :cond_1
    const-string v3, "CacheBitmapData"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "created Cache of size: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " x "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/htc/painting/util/PaintingLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    sget-object v3, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {p3, p4, v3}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v3

    iput-object v3, p0, Lcom/htc/painting/engine/cachebitmap/CacheBitmapData;->mBitmap:Landroid/graphics/Bitmap;

    new-instance v3, Landroid/graphics/Canvas;

    iget-object v4, p0, Lcom/htc/painting/engine/cachebitmap/CacheBitmapData;->mBitmap:Landroid/graphics/Bitmap;

    invoke-direct {v3, v4}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    iput-object v3, p0, Lcom/htc/painting/engine/cachebitmap/CacheBitmapData;->mCanvas:Landroid/graphics/Canvas;

    sub-int v3, p3, p1

    div-int/lit8 v1, v3, 0x2

    sub-int v3, p4, p2

    div-int/lit8 v2, v3, 0x2

    iget-object v3, p0, Lcom/htc/painting/engine/cachebitmap/CacheBitmapData;->mCanvas:Landroid/graphics/Canvas;

    int-to-float v4, v1

    int-to-float v5, v2

    invoke-virtual {v3, v4, v5}, Landroid/graphics/Canvas;->translate(FF)V

    new-instance v3, Landroid/graphics/RectF;

    iget-object v4, p0, Lcom/htc/painting/engine/cachebitmap/CacheBitmapData;->mCanvas:Landroid/graphics/Canvas;

    invoke-virtual {v4}, Landroid/graphics/Canvas;->getClipBounds()Landroid/graphics/Rect;

    move-result-object v4

    invoke-direct {v3, v4}, Landroid/graphics/RectF;-><init>(Landroid/graphics/Rect;)V

    iput-object v3, p0, Lcom/htc/painting/engine/cachebitmap/CacheBitmapData;->mRect:Landroid/graphics/RectF;

    invoke-virtual {p0}, Lcom/htc/painting/engine/cachebitmap/CacheBitmapData;->resetCache()V

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    iput-wide v3, p0, Lcom/htc/painting/engine/cachebitmap/CacheBitmapData;->mCreateTime:J

    iput-wide v3, p0, Lcom/htc/painting/engine/cachebitmap/CacheBitmapData;->mModifyTime:J

    iget-wide v3, p0, Lcom/htc/painting/engine/cachebitmap/CacheBitmapData;->mCreateTime:J

    iput-wide v3, p0, Lcom/htc/painting/engine/cachebitmap/CacheBitmapData;->mDrawingStamp:J

    iget-object v3, p0, Lcom/htc/painting/engine/cachebitmap/CacheBitmapData;->mCanvas:Landroid/graphics/Canvas;

    invoke-virtual {v3}, Landroid/graphics/Canvas;->getMatrix()Landroid/graphics/Matrix;

    move-result-object v0

    iget-object v3, p0, Lcom/htc/painting/engine/cachebitmap/CacheBitmapData;->mOriginalMatrix:Landroid/graphics/Matrix;

    invoke-virtual {v3, v0}, Landroid/graphics/Matrix;->set(Landroid/graphics/Matrix;)V

    iget-object v3, p0, Lcom/htc/painting/engine/cachebitmap/CacheBitmapData;->mCanvasMatrixInverse:Landroid/graphics/Matrix;

    invoke-virtual {v0, v3}, Landroid/graphics/Matrix;->invert(Landroid/graphics/Matrix;)Z

    const-string v3, "CANVAS"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "CacheBitmapData: mOriginalMatrix"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lcom/htc/painting/engine/cachebitmap/CacheBitmapData;->mOriginalMatrix:Landroid/graphics/Matrix;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " mCanvasMatrixInverse: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lcom/htc/painting/engine/cachebitmap/CacheBitmapData;->mCanvasMatrixInverse:Landroid/graphics/Matrix;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/htc/painting/util/PaintingLog;->v(Ljava/lang/String;Ljava/lang/String;)V

    invoke-direct {p0, p5}, Lcom/htc/painting/engine/cachebitmap/CacheBitmapData;->setRecords([Lcom/htc/painting/engine/cachebitmap/CacheBitmapDrawingRecord;)V

    return-void
.end method

.method private setRecords([Lcom/htc/painting/engine/cachebitmap/CacheBitmapDrawingRecord;)V
    .locals 3

    const/4 v0, 0x0

    :goto_0
    array-length v1, p1

    if-ge v0, v1, :cond_2

    aget-object v1, p1, v0

    if-eqz v1, :cond_0

    aget-object v1, p1, v0

    invoke-virtual {v1}, Lcom/htc/painting/engine/cachebitmap/CacheBitmapDrawingRecord;->getId()I

    move-result v1

    if-ltz v1, :cond_0

    aget-object v1, p1, v0

    invoke-virtual {v1}, Lcom/htc/painting/engine/cachebitmap/CacheBitmapDrawingRecord;->getSnapShot()Lcom/htc/painting/engine/ViewPortSnapShot;

    move-result-object v1

    invoke-virtual {v1}, Lcom/htc/painting/engine/ViewPortSnapShot;->getDirectRectF()Landroid/graphics/RectF;

    move-result-object v1

    invoke-virtual {v1}, Landroid/graphics/RectF;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_0

    iget-object v1, p0, Lcom/htc/painting/engine/cachebitmap/CacheBitmapData;->mRect:Landroid/graphics/RectF;

    aget-object v2, p1, v0

    invoke-virtual {v2}, Lcom/htc/painting/engine/cachebitmap/CacheBitmapDrawingRecord;->getSnapShot()Lcom/htc/painting/engine/ViewPortSnapShot;

    move-result-object v2

    invoke-virtual {v2}, Lcom/htc/painting/engine/ViewPortSnapShot;->getDirectRectF()Landroid/graphics/RectF;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/graphics/RectF;->intersects(Landroid/graphics/RectF;Landroid/graphics/RectF;)Z

    move-result v1

    if-nez v1, :cond_1

    :cond_0
    :goto_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    iget-object v1, p0, Lcom/htc/painting/engine/cachebitmap/CacheBitmapData;->mRecords:Ljava/util/ArrayList;

    aget-object v2, p1, v0

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    :cond_2
    return-void
.end method


# virtual methods
.method public declared-synchronized destroy()V
    .locals 2

    monitor-enter p0

    :try_start_0
    const-string v0, "CacheBitmapData"

    const-string v1, "cache destroy"

    invoke-static {v0, v1}, Lcom/htc/painting/util/PaintingLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/htc/painting/engine/cachebitmap/CacheBitmapData;->mIsDestroyed:Z

    iget-object v0, p0, Lcom/htc/painting/engine/cachebitmap/CacheBitmapData;->mBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->recycle()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/htc/painting/engine/cachebitmap/CacheBitmapData;->mBitmap:Landroid/graphics/Bitmap;

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/htc/painting/engine/cachebitmap/CacheBitmapData;->mCanvas:Landroid/graphics/Canvas;

    iget-object v0, p0, Lcom/htc/painting/engine/cachebitmap/CacheBitmapData;->mRecords:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/htc/painting/engine/cachebitmap/CacheBitmapData;->mRecords:Ljava/util/ArrayList;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public findRecord(Lcom/htc/painting/engine/StrokeGroup;)Lcom/htc/painting/engine/cachebitmap/CacheBitmapDrawingRecord;
    .locals 5

    const/4 v2, 0x0

    if-nez p1, :cond_0

    move-object v1, v2

    :goto_0
    return-object v1

    :cond_0
    iget-object v3, p0, Lcom/htc/painting/engine/cachebitmap/CacheBitmapData;->mRecords:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/htc/painting/engine/cachebitmap/CacheBitmapDrawingRecord;

    invoke-virtual {v1}, Lcom/htc/painting/engine/cachebitmap/CacheBitmapDrawingRecord;->getId()I

    move-result v3

    invoke-virtual {p1}, Lcom/htc/painting/engine/StrokeGroup;->getId()I

    move-result v4

    if-ne v3, v4, :cond_1

    goto :goto_0

    :cond_2
    move-object v1, v2

    goto :goto_0
.end method

.method public getAllReferenceRecords()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/htc/painting/engine/cachebitmap/CacheBitmapDrawingRecord;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/htc/painting/engine/cachebitmap/CacheBitmapData;->mRecords:Ljava/util/ArrayList;

    return-object v0
.end method

.method public getBitmap()Landroid/graphics/Bitmap;
    .locals 1

    iget-object v0, p0, Lcom/htc/painting/engine/cachebitmap/CacheBitmapData;->mBitmap:Landroid/graphics/Bitmap;

    return-object v0
.end method

.method public getCanvas()Landroid/graphics/Canvas;
    .locals 2

    iget-object v0, p0, Lcom/htc/painting/engine/cachebitmap/CacheBitmapData;->mCanvas:Landroid/graphics/Canvas;

    iget-object v1, p0, Lcom/htc/painting/engine/cachebitmap/CacheBitmapData;->mOriginalMatrix:Landroid/graphics/Matrix;

    invoke-virtual {v0, v1}, Landroid/graphics/Canvas;->setMatrix(Landroid/graphics/Matrix;)V

    iget-object v0, p0, Lcom/htc/painting/engine/cachebitmap/CacheBitmapData;->mCanvas:Landroid/graphics/Canvas;

    return-object v0
.end method

.method public getCanvasMatrixInverse()Landroid/graphics/Matrix;
    .locals 2

    new-instance v0, Landroid/graphics/Matrix;

    iget-object v1, p0, Lcom/htc/painting/engine/cachebitmap/CacheBitmapData;->mCanvasMatrixInverse:Landroid/graphics/Matrix;

    invoke-direct {v0, v1}, Landroid/graphics/Matrix;-><init>(Landroid/graphics/Matrix;)V

    return-object v0
.end method

.method public getCreateTime()J
    .locals 2

    iget-wide v0, p0, Lcom/htc/painting/engine/cachebitmap/CacheBitmapData;->mCreateTime:J

    return-wide v0
.end method

.method public getDrawingStamp()J
    .locals 2

    iget-wide v0, p0, Lcom/htc/painting/engine/cachebitmap/CacheBitmapData;->mDrawingStamp:J

    return-wide v0
.end method

.method public getModifyTime()J
    .locals 2

    iget-wide v0, p0, Lcom/htc/painting/engine/cachebitmap/CacheBitmapData;->mModifyTime:J

    return-wide v0
.end method

.method public getRect(Landroid/graphics/RectF;)V
    .locals 1

    iget-object v0, p0, Lcom/htc/painting/engine/cachebitmap/CacheBitmapData;->mRect:Landroid/graphics/RectF;

    invoke-virtual {p1, v0}, Landroid/graphics/RectF;->set(Landroid/graphics/RectF;)V

    return-void
.end method

.method public getRefTransformedCanvas(Ljava/util/Collection;)Landroid/graphics/Canvas;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection",
            "<",
            "Lcom/htc/painting/engine/ViewPortSnapShot;",
            ">;)",
            "Landroid/graphics/Canvas;"
        }
    .end annotation

    iget-object v4, p0, Lcom/htc/painting/engine/cachebitmap/CacheBitmapData;->mRecords:Ljava/util/ArrayList;

    invoke-static {v4}, Lcom/htc/painting/engine/cachebitmap/CacheBitmapDrawingRecord;->extractSnapShots(Ljava/util/List;)Ljava/util/List;

    move-result-object v4

    invoke-static {p1, v4}, Lcom/htc/painting/engine/ViewPortSnapShot;->findSnapShotsOfSameGroup(Ljava/util/Collection;Ljava/util/Collection;)[Lcom/htc/painting/engine/ViewPortSnapShot;

    move-result-object v1

    if-nez v1, :cond_0

    const/4 v2, 0x0

    :goto_0
    if-eqz v1, :cond_1

    if-eqz v2, :cond_1

    new-instance v0, Landroid/graphics/Matrix;

    invoke-direct {v0}, Landroid/graphics/Matrix;-><init>()V

    const/4 v4, 0x1

    aget-object v4, v1, v4

    invoke-virtual {v4, v0, v2}, Lcom/htc/painting/engine/ViewPortSnapShot;->computeReferenceDelta(Landroid/graphics/Matrix;Landroid/graphics/Matrix;)V

    invoke-virtual {v0, v0}, Landroid/graphics/Matrix;->invert(Landroid/graphics/Matrix;)Z

    const/16 v4, 0x9

    new-array v3, v4, [F

    iget-object v4, p0, Lcom/htc/painting/engine/cachebitmap/CacheBitmapData;->mOriginalMatrix:Landroid/graphics/Matrix;

    invoke-virtual {v4, v3}, Landroid/graphics/Matrix;->getValues([F)V

    const/4 v4, 0x2

    aget v4, v3, v4

    const/4 v5, 0x5

    aget v5, v3, v5

    invoke-virtual {v0, v4, v5}, Landroid/graphics/Matrix;->postTranslate(FF)Z

    iget-object v4, p0, Lcom/htc/painting/engine/cachebitmap/CacheBitmapData;->mCanvas:Landroid/graphics/Canvas;

    invoke-virtual {v4, v0}, Landroid/graphics/Canvas;->setMatrix(Landroid/graphics/Matrix;)V

    :goto_1
    iget-object v4, p0, Lcom/htc/painting/engine/cachebitmap/CacheBitmapData;->mCanvas:Landroid/graphics/Canvas;

    return-object v4

    :cond_0
    const/4 v4, 0x0

    aget-object v4, v1, v4

    invoke-virtual {v4}, Lcom/htc/painting/engine/ViewPortSnapShot;->getMatrix()Landroid/graphics/Matrix;

    move-result-object v2

    goto :goto_0

    :cond_1
    const-string v4, "CacheBitmapData"

    const-string v5, "viewPortNewMatrix is null, return original Matrix"

    invoke-static {v4, v5}, Lcom/htc/painting/util/PaintingLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1
.end method

.method public getReferenceRecord()Lcom/htc/painting/engine/cachebitmap/CacheBitmapDrawingRecord;
    .locals 2

    iget-object v0, p0, Lcom/htc/painting/engine/cachebitmap/CacheBitmapData;->mRecords:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lez v0, :cond_0

    iget-object v0, p0, Lcom/htc/painting/engine/cachebitmap/CacheBitmapData;->mRecords:Ljava/util/ArrayList;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/htc/painting/engine/cachebitmap/CacheBitmapDrawingRecord;

    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public intersects(Landroid/graphics/RectF;)Z
    .locals 5

    if-nez p1, :cond_0

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lcom/htc/painting/engine/cachebitmap/CacheBitmapData;->mRect:Landroid/graphics/RectF;

    iget v1, p1, Landroid/graphics/RectF;->left:F

    iget v2, p1, Landroid/graphics/RectF;->top:F

    iget v3, p1, Landroid/graphics/RectF;->right:F

    iget v4, p1, Landroid/graphics/RectF;->bottom:F

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/graphics/RectF;->intersects(FFFF)Z

    move-result v0

    goto :goto_0
.end method

.method public isDestroyed()Z
    .locals 1

    iget-boolean v0, p0, Lcom/htc/painting/engine/cachebitmap/CacheBitmapData;->mIsDestroyed:Z

    return v0
.end method

.method public isDummyData()Z
    .locals 1

    iget-boolean v0, p0, Lcom/htc/painting/engine/cachebitmap/CacheBitmapData;->mIsDummyData:Z

    return v0
.end method

.method public resetCache()V
    .locals 2

    iget-object v0, p0, Lcom/htc/painting/engine/cachebitmap/CacheBitmapData;->mCanvas:Landroid/graphics/Canvas;

    invoke-static {}, Lcom/htc/painting/engine/HtcPaintingUtil;->getClearPaint()Landroid/graphics/Paint;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/graphics/Canvas;->drawPaint(Landroid/graphics/Paint;)V

    return-void
.end method

.method public setBitmap(Landroid/graphics/Bitmap;)V
    .locals 2

    iput-object p1, p0, Lcom/htc/painting/engine/cachebitmap/CacheBitmapData;->mBitmap:Landroid/graphics/Bitmap;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/htc/painting/engine/cachebitmap/CacheBitmapData;->mModifyTime:J

    return-void
.end method

.method public setDrawingStamp(J)V
    .locals 0

    iput-wide p1, p0, Lcom/htc/painting/engine/cachebitmap/CacheBitmapData;->mDrawingStamp:J

    return-void
.end method

.method public setIsDummyData(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/htc/painting/engine/cachebitmap/CacheBitmapData;->mIsDummyData:Z

    return-void
.end method

.method public setModifyTime(J)V
    .locals 0

    iput-wide p1, p0, Lcom/htc/painting/engine/cachebitmap/CacheBitmapData;->mModifyTime:J

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 5

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-wide v3, p0, Lcom/htc/painting/engine/cachebitmap/CacheBitmapData;->mCreateTime:J

    invoke-virtual {v0, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ":"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/htc/painting/engine/cachebitmap/CacheBitmapData;->mRecords:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/htc/painting/engine/cachebitmap/CacheBitmapDrawingRecord;

    invoke-virtual {v2}, Lcom/htc/painting/engine/cachebitmap/CacheBitmapDrawingRecord;->getId()I

    move-result v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "\n"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    :cond_0
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    return-object v3
.end method
