.class public final enum Lcom/htc/laputa/engine/util/LocationSearchCmd$RetType;
.super Ljava/lang/Enum;
.source "LocationSearchCmd.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/htc/laputa/engine/util/LocationSearchCmd;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "RetType"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/htc/laputa/engine/util/LocationSearchCmd$RetType;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/htc/laputa/engine/util/LocationSearchCmd$RetType;

.field public static final enum NORMAL:Lcom/htc/laputa/engine/util/LocationSearchCmd$RetType;

.field public static final enum SUBAREA:Lcom/htc/laputa/engine/util/LocationSearchCmd$RetType;

.field public static final enum SUBCATEGORY:Lcom/htc/laputa/engine/util/LocationSearchCmd$RetType;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .prologue
    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 73
    new-instance v0, Lcom/htc/laputa/engine/util/LocationSearchCmd$RetType;

    const-string v1, "NORMAL"

    invoke-direct {v0, v1, v2}, Lcom/htc/laputa/engine/util/LocationSearchCmd$RetType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/htc/laputa/engine/util/LocationSearchCmd$RetType;->NORMAL:Lcom/htc/laputa/engine/util/LocationSearchCmd$RetType;

    .line 77
    new-instance v0, Lcom/htc/laputa/engine/util/LocationSearchCmd$RetType;

    const-string v1, "SUBAREA"

    invoke-direct {v0, v1, v3}, Lcom/htc/laputa/engine/util/LocationSearchCmd$RetType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/htc/laputa/engine/util/LocationSearchCmd$RetType;->SUBAREA:Lcom/htc/laputa/engine/util/LocationSearchCmd$RetType;

    .line 81
    new-instance v0, Lcom/htc/laputa/engine/util/LocationSearchCmd$RetType;

    const-string v1, "SUBCATEGORY"

    invoke-direct {v0, v1, v4}, Lcom/htc/laputa/engine/util/LocationSearchCmd$RetType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/htc/laputa/engine/util/LocationSearchCmd$RetType;->SUBCATEGORY:Lcom/htc/laputa/engine/util/LocationSearchCmd$RetType;

    .line 69
    const/4 v0, 0x3

    new-array v0, v0, [Lcom/htc/laputa/engine/util/LocationSearchCmd$RetType;

    sget-object v1, Lcom/htc/laputa/engine/util/LocationSearchCmd$RetType;->NORMAL:Lcom/htc/laputa/engine/util/LocationSearchCmd$RetType;

    aput-object v1, v0, v2

    sget-object v1, Lcom/htc/laputa/engine/util/LocationSearchCmd$RetType;->SUBAREA:Lcom/htc/laputa/engine/util/LocationSearchCmd$RetType;

    aput-object v1, v0, v3

    sget-object v1, Lcom/htc/laputa/engine/util/LocationSearchCmd$RetType;->SUBCATEGORY:Lcom/htc/laputa/engine/util/LocationSearchCmd$RetType;

    aput-object v1, v0, v4

    sput-object v0, Lcom/htc/laputa/engine/util/LocationSearchCmd$RetType;->$VALUES:[Lcom/htc/laputa/engine/util/LocationSearchCmd$RetType;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .prologue
    .line 69
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/htc/laputa/engine/util/LocationSearchCmd$RetType;
    .locals 1
    .parameter "name"

    .prologue
    .line 69
    const-class v0, Lcom/htc/laputa/engine/util/LocationSearchCmd$RetType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/htc/laputa/engine/util/LocationSearchCmd$RetType;

    return-object v0
.end method

.method public static values()[Lcom/htc/laputa/engine/util/LocationSearchCmd$RetType;
    .locals 1

    .prologue
    .line 69
    sget-object v0, Lcom/htc/laputa/engine/util/LocationSearchCmd$RetType;->$VALUES:[Lcom/htc/laputa/engine/util/LocationSearchCmd$RetType;

    invoke-virtual {v0}, [Lcom/htc/laputa/engine/util/LocationSearchCmd$RetType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/htc/laputa/engine/util/LocationSearchCmd$RetType;

    return-object v0
.end method
