.class Lcom/htc/photowidget3d/image/ImageListUber$DescendingComparator;
.super Ljava/lang/Object;
.source "ImageListUber.java"

# interfaces
.implements Ljava/util/Comparator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/htc/photowidget3d/image/ImageListUber;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "DescendingComparator"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/Comparator",
        "<",
        "Lcom/htc/photowidget3d/image/ImageListUber$MergeSlot;",
        ">;"
    }
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 0

    .prologue
    .line 238
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/htc/photowidget3d/image/ImageListUber$1;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 238
    invoke-direct {p0}, Lcom/htc/photowidget3d/image/ImageListUber$DescendingComparator;-><init>()V

    return-void
.end method


# virtual methods
.method public compare(Lcom/htc/photowidget3d/image/ImageListUber$MergeSlot;Lcom/htc/photowidget3d/image/ImageListUber$MergeSlot;)I
    .locals 4
    .parameter "m1"
    .parameter "m2"

    .prologue
    .line 241
    iget-wide v0, p1, Lcom/htc/photowidget3d/image/ImageListUber$MergeSlot;->mDateTaken:J

    iget-wide v2, p2, Lcom/htc/photowidget3d/image/ImageListUber$MergeSlot;->mDateTaken:J

    cmp-long v0, v0, v2

    if-eqz v0, :cond_1

    .line 242
    iget-wide v0, p1, Lcom/htc/photowidget3d/image/ImageListUber$MergeSlot;->mDateTaken:J

    iget-wide v2, p2, Lcom/htc/photowidget3d/image/ImageListUber$MergeSlot;->mDateTaken:J

    cmp-long v0, v0, v2

    if-gez v0, :cond_0

    const/4 v0, 0x1

    .line 244
    :goto_0
    return v0

    .line 242
    :cond_0
    const/4 v0, -0x1

    goto :goto_0

    .line 244
    :cond_1
    iget v0, p1, Lcom/htc/photowidget3d/image/ImageListUber$MergeSlot;->mListIndex:I

    iget v1, p2, Lcom/htc/photowidget3d/image/ImageListUber$MergeSlot;->mListIndex:I

    sub-int/2addr v0, v1

    goto :goto_0
.end method

.method public bridge synthetic compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 1
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 238
    check-cast p1, Lcom/htc/photowidget3d/image/ImageListUber$MergeSlot;

    .end local p1
    check-cast p2, Lcom/htc/photowidget3d/image/ImageListUber$MergeSlot;

    .end local p2
    invoke-virtual {p0, p1, p2}, Lcom/htc/photowidget3d/image/ImageListUber$DescendingComparator;->compare(Lcom/htc/photowidget3d/image/ImageListUber$MergeSlot;Lcom/htc/photowidget3d/image/ImageListUber$MergeSlot;)I

    move-result v0

    return v0
.end method
