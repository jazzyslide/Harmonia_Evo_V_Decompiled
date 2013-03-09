.class abstract Lcom/google/android/common/base/Splitter$SplittingIterator;
.super Lcom/google/android/common/base/Splitter$AbstractIterator;
.source "Splitter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/common/base/Splitter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x40a
    name = "SplittingIterator"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/android/common/base/Splitter$AbstractIterator",
        "<",
        "Ljava/lang/String;",
        ">;"
    }
.end annotation


# instance fields
.field offset:I

.field final omitEmptyStrings:Z

.field final toSplit:Ljava/lang/CharSequence;

.field final trimmer:Lcom/google/android/common/base/CharMatcher;


# direct methods
.method protected constructor <init>(Lcom/google/android/common/base/Splitter;Ljava/lang/CharSequence;)V
    .locals 1
    .parameter "splitter"
    .parameter "toSplit"

    .prologue
    .line 366
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/google/android/common/base/Splitter$AbstractIterator;-><init>(Lcom/google/android/common/base/Splitter$1;)V

    .line 364
    const/4 v0, 0x0

    iput v0, p0, Lcom/google/android/common/base/Splitter$SplittingIterator;->offset:I

    .line 367
    #getter for: Lcom/google/android/common/base/Splitter;->trimmer:Lcom/google/android/common/base/CharMatcher;
    invoke-static {p1}, Lcom/google/android/common/base/Splitter;->access$200(Lcom/google/android/common/base/Splitter;)Lcom/google/android/common/base/CharMatcher;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/common/base/Splitter$SplittingIterator;->trimmer:Lcom/google/android/common/base/CharMatcher;

    .line 368
    #getter for: Lcom/google/android/common/base/Splitter;->omitEmptyStrings:Z
    invoke-static {p1}, Lcom/google/android/common/base/Splitter;->access$300(Lcom/google/android/common/base/Splitter;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/google/android/common/base/Splitter$SplittingIterator;->omitEmptyStrings:Z

    .line 369
    iput-object p2, p0, Lcom/google/android/common/base/Splitter$SplittingIterator;->toSplit:Ljava/lang/CharSequence;

    .line 370
    return-void
.end method


# virtual methods
.method protected bridge synthetic computeNext()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 345
    invoke-virtual {p0}, Lcom/google/android/common/base/Splitter$SplittingIterator;->computeNext()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method protected computeNext()Ljava/lang/String;
    .locals 7

    .prologue
    const/4 v6, -0x1

    .line 373
    :cond_0
    iget v3, p0, Lcom/google/android/common/base/Splitter$SplittingIterator;->offset:I

    if-eq v3, v6, :cond_5

    .line 374
    iget v2, p0, Lcom/google/android/common/base/Splitter$SplittingIterator;->offset:I

    .line 377
    .local v2, start:I
    iget v3, p0, Lcom/google/android/common/base/Splitter$SplittingIterator;->offset:I

    invoke-virtual {p0, v3}, Lcom/google/android/common/base/Splitter$SplittingIterator;->separatorStart(I)I

    move-result v1

    .line 378
    .local v1, separatorPosition:I
    if-ne v1, v6, :cond_1

    .line 379
    iget-object v3, p0, Lcom/google/android/common/base/Splitter$SplittingIterator;->toSplit:Ljava/lang/CharSequence;

    invoke-interface {v3}, Ljava/lang/CharSequence;->length()I

    move-result v0

    .line 380
    .local v0, end:I
    iput v6, p0, Lcom/google/android/common/base/Splitter$SplittingIterator;->offset:I

    .line 386
    :goto_0
    if-ge v2, v0, :cond_2

    iget-object v3, p0, Lcom/google/android/common/base/Splitter$SplittingIterator;->trimmer:Lcom/google/android/common/base/CharMatcher;

    iget-object v4, p0, Lcom/google/android/common/base/Splitter$SplittingIterator;->toSplit:Ljava/lang/CharSequence;

    invoke-interface {v4, v2}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v4

    invoke-virtual {v3, v4}, Lcom/google/android/common/base/CharMatcher;->matches(C)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 387
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 382
    .end local v0           #end:I
    :cond_1
    move v0, v1

    .line 383
    .restart local v0       #end:I
    invoke-virtual {p0, v1}, Lcom/google/android/common/base/Splitter$SplittingIterator;->separatorEnd(I)I

    move-result v3

    iput v3, p0, Lcom/google/android/common/base/Splitter$SplittingIterator;->offset:I

    goto :goto_0

    .line 389
    :cond_2
    :goto_1
    if-le v0, v2, :cond_3

    iget-object v3, p0, Lcom/google/android/common/base/Splitter$SplittingIterator;->trimmer:Lcom/google/android/common/base/CharMatcher;

    iget-object v4, p0, Lcom/google/android/common/base/Splitter$SplittingIterator;->toSplit:Ljava/lang/CharSequence;

    add-int/lit8 v5, v0, -0x1

    invoke-interface {v4, v5}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v4

    invoke-virtual {v3, v4}, Lcom/google/android/common/base/CharMatcher;->matches(C)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 390
    add-int/lit8 v0, v0, -0x1

    goto :goto_1

    .line 393
    :cond_3
    iget-boolean v3, p0, Lcom/google/android/common/base/Splitter$SplittingIterator;->omitEmptyStrings:Z

    if-eqz v3, :cond_4

    if-eq v2, v0, :cond_0

    .line 397
    :cond_4
    iget-object v3, p0, Lcom/google/android/common/base/Splitter$SplittingIterator;->toSplit:Ljava/lang/CharSequence;

    invoke-interface {v3, v2, v0}, Ljava/lang/CharSequence;->subSequence(II)Ljava/lang/CharSequence;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    .line 399
    .end local v0           #end:I
    .end local v1           #separatorPosition:I
    .end local v2           #start:I
    :goto_2
    return-object v3

    :cond_5
    invoke-virtual {p0}, Lcom/google/android/common/base/Splitter$SplittingIterator;->endOfData()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    goto :goto_2
.end method

.method abstract separatorEnd(I)I
.end method

.method abstract separatorStart(I)I
.end method
