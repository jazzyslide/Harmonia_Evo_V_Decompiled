.class public final enum Lcom/google/android/gm/provider/Operations$RecordHistory;
.super Ljava/lang/Enum;
.source "Operations.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/gm/provider/Operations;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "RecordHistory"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/google/android/gm/provider/Operations$RecordHistory;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/google/android/gm/provider/Operations$RecordHistory;

.field public static final enum FALSE:Lcom/google/android/gm/provider/Operations$RecordHistory;

.field public static final enum TRUE:Lcom/google/android/gm/provider/Operations$RecordHistory;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 40
    new-instance v0, Lcom/google/android/gm/provider/Operations$RecordHistory;

    const-string v1, "FALSE"

    invoke-direct {v0, v1, v2}, Lcom/google/android/gm/provider/Operations$RecordHistory;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/google/android/gm/provider/Operations$RecordHistory;->FALSE:Lcom/google/android/gm/provider/Operations$RecordHistory;

    .line 41
    new-instance v0, Lcom/google/android/gm/provider/Operations$RecordHistory;

    const-string v1, "TRUE"

    invoke-direct {v0, v1, v3}, Lcom/google/android/gm/provider/Operations$RecordHistory;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/google/android/gm/provider/Operations$RecordHistory;->TRUE:Lcom/google/android/gm/provider/Operations$RecordHistory;

    .line 39
    const/4 v0, 0x2

    new-array v0, v0, [Lcom/google/android/gm/provider/Operations$RecordHistory;

    sget-object v1, Lcom/google/android/gm/provider/Operations$RecordHistory;->FALSE:Lcom/google/android/gm/provider/Operations$RecordHistory;

    aput-object v1, v0, v2

    sget-object v1, Lcom/google/android/gm/provider/Operations$RecordHistory;->TRUE:Lcom/google/android/gm/provider/Operations$RecordHistory;

    aput-object v1, v0, v3

    sput-object v0, Lcom/google/android/gm/provider/Operations$RecordHistory;->$VALUES:[Lcom/google/android/gm/provider/Operations$RecordHistory;

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
    .line 39
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/google/android/gm/provider/Operations$RecordHistory;
    .locals 1
    .parameter

    .prologue
    .line 39
    const-class v0, Lcom/google/android/gm/provider/Operations$RecordHistory;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/google/android/gm/provider/Operations$RecordHistory;

    return-object v0
.end method

.method public static values()[Lcom/google/android/gm/provider/Operations$RecordHistory;
    .locals 1

    .prologue
    .line 39
    sget-object v0, Lcom/google/android/gm/provider/Operations$RecordHistory;->$VALUES:[Lcom/google/android/gm/provider/Operations$RecordHistory;

    invoke-virtual {v0}, [Lcom/google/android/gm/provider/Operations$RecordHistory;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/google/android/gm/provider/Operations$RecordHistory;

    return-object v0
.end method
