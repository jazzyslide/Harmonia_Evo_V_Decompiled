.class Lcom/sqn/dcc/agscAutodetectExitCriteriaMet;
.super Ljava/lang/Object;
.source "agscAutodetectExitCriteriaMet.java"


# static fields
.field public static _id:I = 0x0

.field public static final _name:Ljava/lang/String; = "autodetectExitCriteriaMet"


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/4 v0, -0x1

    sput v0, Lcom/sqn/dcc/agscAutodetectExitCriteriaMet;->_id:I

    return-void
.end method

.method constructor <init>()V
    .locals 0

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static notify([B)I
    .locals 4

    const/4 v3, 0x0

    const/4 v1, 0x0

    new-instance v0, Lcom/sqn/dcc/OutValue;

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-direct {v0, v2}, Lcom/sqn/dcc/OutValue;-><init>(Ljava/lang/Object;)V

    sget-object v2, Lcom/sqn/dcc/agscNdssImpl;->_use:Lcom/sqn/dcc/NdssClient;

    if-eqz v2, :cond_0

    sget-object v2, Lcom/sqn/dcc/agscNdssImpl;->_use:Lcom/sqn/dcc/NdssClient;

    invoke-virtual {v2}, Lcom/sqn/dcc/NdssClient;->AutodetectExitCriteriaMet()V

    :cond_0
    return v3
.end method
