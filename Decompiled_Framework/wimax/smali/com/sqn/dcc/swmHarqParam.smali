.class public Lcom/sqn/dcc/swmHarqParam;
.super Ljava/lang/Object;
.source "swmHarqParam.java"


# instance fields
.field public acidBitmap:I

.field public enabled:Z

.field public latency:I

.field public pduSnSubheader:Lcom/sqn/dcc/swmHarqPduSn;

.field public windowSz:J


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lcom/sqn/dcc/swmHarqPduSn;

    invoke-direct {v0}, Lcom/sqn/dcc/swmHarqPduSn;-><init>()V

    iput-object v0, p0, Lcom/sqn/dcc/swmHarqParam;->pduSnSubheader:Lcom/sqn/dcc/swmHarqPduSn;

    return-void
.end method

.method public static marshall([BLcom/sqn/dcc/swmHarqParam;Lcom/sqn/dcc/OutValue;)I
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([B",
            "Lcom/sqn/dcc/swmHarqParam;",
            "Lcom/sqn/dcc/OutValue",
            "<",
            "Ljava/lang/Integer;",
            ">;)I"
        }
    .end annotation

    const/4 v0, 0x0

    array-length v2, p0

    iget-object v1, p2, Lcom/sqn/dcc/OutValue;->_value:Ljava/lang/Object;

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    add-int/lit8 v1, v1, 0x12

    if-ge v2, v1, :cond_0

    const v1, -0xfffb

    :goto_0
    return v1

    :cond_0
    iget-boolean v1, p1, Lcom/sqn/dcc/swmHarqParam;->enabled:Z

    invoke-static {p0, v1, p2}, Lcom/sqn/dcc/Util;->Copy32ToBuffer([BZLcom/sqn/dcc/OutValue;)V

    iget v1, p1, Lcom/sqn/dcc/swmHarqParam;->acidBitmap:I

    invoke-static {p0, v1, p2}, Lcom/sqn/dcc/Util;->Copy16ToBuffer([BILcom/sqn/dcc/OutValue;)V

    iget v1, p1, Lcom/sqn/dcc/swmHarqParam;->latency:I

    int-to-long v1, v1

    invoke-static {p0, v1, v2, p2}, Lcom/sqn/dcc/Util;->Copy32ToBuffer([BJLcom/sqn/dcc/OutValue;)V

    iget-object v1, p1, Lcom/sqn/dcc/swmHarqParam;->pduSnSubheader:Lcom/sqn/dcc/swmHarqPduSn;

    invoke-static {p0, v1, p2}, Lcom/sqn/dcc/swmHarqPduSn;->marshall([BLcom/sqn/dcc/swmHarqPduSn;Lcom/sqn/dcc/OutValue;)I

    move-result v0

    if-eqz v0, :cond_1

    move v1, v0

    goto :goto_0

    :cond_1
    iget-wide v1, p1, Lcom/sqn/dcc/swmHarqParam;->windowSz:J

    invoke-static {p0, v1, v2, p2}, Lcom/sqn/dcc/Util;->Copy32ToBuffer([BJLcom/sqn/dcc/OutValue;)V

    move v1, v0

    goto :goto_0
.end method

.method public static unmarshall([BLcom/sqn/dcc/swmHarqParam;Lcom/sqn/dcc/OutValue;)I
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([B",
            "Lcom/sqn/dcc/swmHarqParam;",
            "Lcom/sqn/dcc/OutValue",
            "<",
            "Ljava/lang/Integer;",
            ">;)I"
        }
    .end annotation

    const/4 v0, 0x0

    array-length v2, p0

    iget-object v1, p2, Lcom/sqn/dcc/OutValue;->_value:Ljava/lang/Object;

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    add-int/lit8 v1, v1, 0x12

    if-ge v2, v1, :cond_0

    const v1, -0xfffb

    :goto_0
    return v1

    :cond_0
    invoke-static {p0, p2}, Lcom/sqn/dcc/Util;->Copy32FromBuffer([BLcom/sqn/dcc/OutValue;)J

    move-result-wide v1

    const-wide/16 v3, 0x0

    cmp-long v1, v1, v3

    if-nez v1, :cond_1

    const/4 v1, 0x0

    :goto_1
    iput-boolean v1, p1, Lcom/sqn/dcc/swmHarqParam;->enabled:Z

    invoke-static {p0, p2}, Lcom/sqn/dcc/Util;->Copy16FromBuffer([BLcom/sqn/dcc/OutValue;)I

    move-result v1

    iput v1, p1, Lcom/sqn/dcc/swmHarqParam;->acidBitmap:I

    invoke-static {p0, p2}, Lcom/sqn/dcc/Util;->Copy32FromBuffer([BLcom/sqn/dcc/OutValue;)J

    move-result-wide v1

    long-to-int v1, v1

    iput v1, p1, Lcom/sqn/dcc/swmHarqParam;->latency:I

    iget-object v1, p1, Lcom/sqn/dcc/swmHarqParam;->pduSnSubheader:Lcom/sqn/dcc/swmHarqPduSn;

    invoke-static {p0, v1, p2}, Lcom/sqn/dcc/swmHarqPduSn;->unmarshall([BLcom/sqn/dcc/swmHarqPduSn;Lcom/sqn/dcc/OutValue;)I

    move-result v0

    if-eqz v0, :cond_2

    move v1, v0

    goto :goto_0

    :cond_1
    const/4 v1, 0x1

    goto :goto_1

    :cond_2
    invoke-static {p0, p2}, Lcom/sqn/dcc/Util;->Copy32FromBuffer([BLcom/sqn/dcc/OutValue;)J

    move-result-wide v1

    iput-wide v1, p1, Lcom/sqn/dcc/swmHarqParam;->windowSz:J

    move v1, v0

    goto :goto_0
.end method
