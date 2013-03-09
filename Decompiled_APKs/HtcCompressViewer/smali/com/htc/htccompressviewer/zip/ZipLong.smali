.class public final Lcom/htc/htccompressviewer/zip/ZipLong;
.super Ljava/lang/Object;
.source "ZipLong.java"

# interfaces
.implements Ljava/lang/Cloneable;


# static fields
.field private static final BYTE_1:I = 0x1

.field private static final BYTE_1_MASK:I = 0xff00

.field private static final BYTE_1_SHIFT:I = 0x8

.field private static final BYTE_2:I = 0x2

.field private static final BYTE_2_MASK:I = 0xff0000

.field private static final BYTE_2_SHIFT:I = 0x10

.field private static final BYTE_3:I = 0x3

.field private static final BYTE_3_MASK:J = 0xff000000L

.field private static final BYTE_3_SHIFT:I = 0x18

.field private static final BYTE_BIT_SIZE:I = 0x8

.field private static final BYTE_MASK:I = 0xff

.field private static final WORD:I = 0x4


# instance fields
.field private value:J


# direct methods
.method public constructor <init>(J)V
    .locals 0
    .parameter "value"

    .prologue
    .line 51
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 52
    iput-wide p1, p0, Lcom/htc/htccompressviewer/zip/ZipLong;->value:J

    .line 53
    return-void
.end method

.method public constructor <init>([B)V
    .locals 1
    .parameter "bytes"

    .prologue
    .line 61
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/htc/htccompressviewer/zip/ZipLong;-><init>([BI)V

    .line 62
    return-void
.end method

.method public constructor <init>([BI)V
    .locals 2
    .parameter "bytes"
    .parameter "offset"

    .prologue
    .line 70
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 71
    invoke-static {p1, p2}, Lcom/htc/htccompressviewer/zip/ZipLong;->getValue([BI)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/htc/htccompressviewer/zip/ZipLong;->value:J

    .line 72
    return-void
.end method

.method public static getBytes(J)[B
    .locals 5
    .parameter "value"

    .prologue
    .line 98
    const/4 v1, 0x4

    new-array v0, v1, [B

    .line 99
    .local v0, result:[B
    const/4 v1, 0x0

    const-wide/16 v2, 0xff

    and-long/2addr v2, p0

    long-to-int v2, v2

    int-to-byte v2, v2

    aput-byte v2, v0, v1

    .line 100
    const/4 v1, 0x1

    const-wide/32 v2, 0xff00

    and-long/2addr v2, p0

    const/16 v4, 0x8

    shr-long/2addr v2, v4

    long-to-int v2, v2

    int-to-byte v2, v2

    aput-byte v2, v0, v1

    .line 101
    const/4 v1, 0x2

    const-wide/32 v2, 0xff0000

    and-long/2addr v2, p0

    const/16 v4, 0x10

    shr-long/2addr v2, v4

    long-to-int v2, v2

    int-to-byte v2, v2

    aput-byte v2, v0, v1

    .line 102
    const/4 v1, 0x3

    const-wide v2, 0xff000000L

    and-long/2addr v2, p0

    const/16 v4, 0x18

    shr-long/2addr v2, v4

    long-to-int v2, v2

    int-to-byte v2, v2

    aput-byte v2, v0, v1

    .line 103
    return-object v0
.end method

.method public static getValue([B)J
    .locals 2
    .parameter "bytes"

    .prologue
    .line 126
    const/4 v0, 0x0

    invoke-static {p0, v0}, Lcom/htc/htccompressviewer/zip/ZipLong;->getValue([BI)J

    move-result-wide v0

    return-wide v0
.end method

.method public static getValue([BI)J
    .locals 6
    .parameter "bytes"
    .parameter "offset"

    .prologue
    .line 113
    add-int/lit8 v2, p1, 0x3

    aget-byte v2, p0, v2

    shl-int/lit8 v2, v2, 0x18

    int-to-long v2, v2

    const-wide v4, 0xff000000L

    and-long v0, v2, v4

    .line 114
    .local v0, value:J
    add-int/lit8 v2, p1, 0x2

    aget-byte v2, p0, v2

    shl-int/lit8 v2, v2, 0x10

    const/high16 v3, 0xff

    and-int/2addr v2, v3

    int-to-long v2, v2

    add-long/2addr v0, v2

    .line 115
    add-int/lit8 v2, p1, 0x1

    aget-byte v2, p0, v2

    shl-int/lit8 v2, v2, 0x8

    const v3, 0xff00

    and-int/2addr v2, v3

    int-to-long v2, v2

    add-long/2addr v0, v2

    .line 116
    aget-byte v2, p0, p1

    and-int/lit16 v2, v2, 0xff

    int-to-long v2, v2

    add-long/2addr v0, v2

    .line 117
    return-wide v0
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 5
    .parameter "o"

    .prologue
    const/4 v0, 0x0

    .line 136
    if-eqz p1, :cond_0

    instance-of v1, p1, Lcom/htc/htccompressviewer/zip/ZipLong;

    if-nez v1, :cond_1

    .line 139
    .end local p1
    :cond_0
    :goto_0
    return v0

    .restart local p1
    :cond_1
    iget-wide v1, p0, Lcom/htc/htccompressviewer/zip/ZipLong;->value:J

    check-cast p1, Lcom/htc/htccompressviewer/zip/ZipLong;

    .end local p1
    invoke-virtual {p1}, Lcom/htc/htccompressviewer/zip/ZipLong;->getValue()J

    move-result-wide v3

    cmp-long v1, v1, v3

    if-nez v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0
.end method

.method public getBytes()[B
    .locals 2

    .prologue
    .line 80
    iget-wide v0, p0, Lcom/htc/htccompressviewer/zip/ZipLong;->value:J

    invoke-static {v0, v1}, Lcom/htc/htccompressviewer/zip/ZipLong;->getBytes(J)[B

    move-result-object v0

    return-object v0
.end method

.method public getValue()J
    .locals 2

    .prologue
    .line 89
    iget-wide v0, p0, Lcom/htc/htccompressviewer/zip/ZipLong;->value:J

    return-wide v0
.end method

.method public hashCode()I
    .locals 2

    .prologue
    .line 148
    iget-wide v0, p0, Lcom/htc/htccompressviewer/zip/ZipLong;->value:J

    long-to-int v0, v0

    return v0
.end method
