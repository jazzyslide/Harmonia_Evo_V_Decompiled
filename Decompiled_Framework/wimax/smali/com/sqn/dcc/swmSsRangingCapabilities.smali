.class public Lcom/sqn/dcc/swmSsRangingCapabilities;
.super Ljava/lang/Object;
.source "swmSsRangingCapabilities.java"


# instance fields
.field public phy:Lcom/sqn/dcc/swmSsRangingCapabilitiesPhy;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lcom/sqn/dcc/swmSsRangingCapabilitiesPhy;

    invoke-direct {v0}, Lcom/sqn/dcc/swmSsRangingCapabilitiesPhy;-><init>()V

    iput-object v0, p0, Lcom/sqn/dcc/swmSsRangingCapabilities;->phy:Lcom/sqn/dcc/swmSsRangingCapabilitiesPhy;

    return-void
.end method

.method public static marshall([BLcom/sqn/dcc/swmSsRangingCapabilities;Lcom/sqn/dcc/OutValue;)I
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([B",
            "Lcom/sqn/dcc/swmSsRangingCapabilities;",
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

    add-int/lit8 v1, v1, 0x0

    if-ge v2, v1, :cond_0

    const v1, -0xfffb

    :goto_0
    return v1

    :cond_0
    iget-object v1, p1, Lcom/sqn/dcc/swmSsRangingCapabilities;->phy:Lcom/sqn/dcc/swmSsRangingCapabilitiesPhy;

    invoke-static {p0, v1, p2}, Lcom/sqn/dcc/swmSsRangingCapabilitiesPhy;->marshall([BLcom/sqn/dcc/swmSsRangingCapabilitiesPhy;Lcom/sqn/dcc/OutValue;)I

    move-result v0

    if-eqz v0, :cond_1

    move v1, v0

    goto :goto_0

    :cond_1
    move v1, v0

    goto :goto_0
.end method

.method public static unmarshall([BLcom/sqn/dcc/swmSsRangingCapabilities;Lcom/sqn/dcc/OutValue;)I
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([B",
            "Lcom/sqn/dcc/swmSsRangingCapabilities;",
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

    add-int/lit8 v1, v1, 0x0

    if-ge v2, v1, :cond_0

    const v1, -0xfffb

    :goto_0
    return v1

    :cond_0
    iget-object v1, p1, Lcom/sqn/dcc/swmSsRangingCapabilities;->phy:Lcom/sqn/dcc/swmSsRangingCapabilitiesPhy;

    invoke-static {p0, v1, p2}, Lcom/sqn/dcc/swmSsRangingCapabilitiesPhy;->unmarshall([BLcom/sqn/dcc/swmSsRangingCapabilitiesPhy;Lcom/sqn/dcc/OutValue;)I

    move-result v0

    if-eqz v0, :cond_1

    move v1, v0

    goto :goto_0

    :cond_1
    move v1, v0

    goto :goto_0
.end method
