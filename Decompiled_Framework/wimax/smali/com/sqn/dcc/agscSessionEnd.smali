.class Lcom/sqn/dcc/agscSessionEnd;
.super Ljava/lang/Object;
.source "agscSessionEnd.java"


# static fields
.field public static _id:I = 0x0

.field public static final _name:Ljava/lang/String; = "SessionEnd"


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/4 v0, -0x1

    sput v0, Lcom/sqn/dcc/agscSessionEnd;->_id:I

    return-void
.end method

.method constructor <init>()V
    .locals 0

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static notify([B)I
    .locals 6

    const/4 v5, 0x0

    const/4 v3, 0x0

    new-instance v2, Lcom/sqn/dcc/OutValue;

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-direct {v2, v4}, Lcom/sqn/dcc/OutValue;-><init>(Ljava/lang/Object;)V

    invoke-static {p0, v2}, Lcom/sqn/dcc/Util;->Copy32FromBuffer([BLcom/sqn/dcc/OutValue;)J

    move-result-wide v0

    sget-object v4, Lcom/sqn/dcc/agscOmadmImpl;->_use:Lcom/sqn/dcc/OmadmClient;

    if-eqz v4, :cond_0

    sget-object v4, Lcom/sqn/dcc/agscOmadmImpl;->_use:Lcom/sqn/dcc/OmadmClient;

    invoke-virtual {v4, v0, v1}, Lcom/sqn/dcc/OmadmClient;->SessionEnd(J)V

    :cond_0
    return v5
.end method
