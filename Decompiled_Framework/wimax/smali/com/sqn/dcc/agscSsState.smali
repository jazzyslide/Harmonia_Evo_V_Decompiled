.class Lcom/sqn/dcc/agscSsState;
.super Ljava/lang/Object;
.source "agscSsState.java"


# static fields
.field public static _id:I = 0x0

.field public static final _name:Ljava/lang/String; = "SsState"


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/4 v0, -0x1

    sput v0, Lcom/sqn/dcc/agscSsState;->_id:I

    return-void
.end method

.method constructor <init>()V
    .locals 0

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static notify([B)I
    .locals 5

    const/4 v3, 0x0

    const/4 v1, 0x0

    new-instance v0, Lcom/sqn/dcc/OutValue;

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-direct {v0, v4}, Lcom/sqn/dcc/OutValue;-><init>(Ljava/lang/Object;)V

    new-instance v2, Lcom/sqn/dcc/swmSsState;

    invoke-direct {v2}, Lcom/sqn/dcc/swmSsState;-><init>()V

    invoke-static {p0, v2, v0}, Lcom/sqn/dcc/swmSsState;->unmarshall([BLcom/sqn/dcc/swmSsState;Lcom/sqn/dcc/OutValue;)I

    move-result v1

    if-eqz v1, :cond_0

    :goto_0
    return v1

    :cond_0
    sget-object v4, Lcom/sqn/dcc/agscMgtSsImpl;->_use:Lcom/sqn/dcc/MgtSsClient;

    if-eqz v4, :cond_1

    sget-object v4, Lcom/sqn/dcc/agscMgtSsImpl;->_use:Lcom/sqn/dcc/MgtSsClient;

    invoke-virtual {v4, v2}, Lcom/sqn/dcc/MgtSsClient;->SsState(Lcom/sqn/dcc/swmSsState;)V

    :cond_1
    move v1, v3

    goto :goto_0
.end method
