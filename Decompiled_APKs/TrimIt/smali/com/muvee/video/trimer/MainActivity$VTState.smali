.class final enum Lcom/muvee/video/trimer/MainActivity$VTState;
.super Ljava/lang/Enum;
.source "MainActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/muvee/video/trimer/MainActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x401a
    name = "VTState"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/muvee/video/trimer/MainActivity$VTState;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic ENUM$VALUES:[Lcom/muvee/video/trimer/MainActivity$VTState;

.field public static final enum INITILIED:Lcom/muvee/video/trimer/MainActivity$VTState;

.field public static final enum NEW:Lcom/muvee/video/trimer/MainActivity$VTState;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 82
    new-instance v0, Lcom/muvee/video/trimer/MainActivity$VTState;

    const-string v1, "NEW"

    invoke-direct {v0, v1, v2}, Lcom/muvee/video/trimer/MainActivity$VTState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/muvee/video/trimer/MainActivity$VTState;->NEW:Lcom/muvee/video/trimer/MainActivity$VTState;

    new-instance v0, Lcom/muvee/video/trimer/MainActivity$VTState;

    const-string v1, "INITILIED"

    invoke-direct {v0, v1, v3}, Lcom/muvee/video/trimer/MainActivity$VTState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/muvee/video/trimer/MainActivity$VTState;->INITILIED:Lcom/muvee/video/trimer/MainActivity$VTState;

    const/4 v0, 0x2

    new-array v0, v0, [Lcom/muvee/video/trimer/MainActivity$VTState;

    sget-object v1, Lcom/muvee/video/trimer/MainActivity$VTState;->NEW:Lcom/muvee/video/trimer/MainActivity$VTState;

    aput-object v1, v0, v2

    sget-object v1, Lcom/muvee/video/trimer/MainActivity$VTState;->INITILIED:Lcom/muvee/video/trimer/MainActivity$VTState;

    aput-object v1, v0, v3

    sput-object v0, Lcom/muvee/video/trimer/MainActivity$VTState;->ENUM$VALUES:[Lcom/muvee/video/trimer/MainActivity$VTState;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 82
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/muvee/video/trimer/MainActivity$VTState;
    .locals 1
    .parameter

    .prologue
    .line 1
    const-class v0, Lcom/muvee/video/trimer/MainActivity$VTState;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/muvee/video/trimer/MainActivity$VTState;

    return-object v0
.end method

.method public static values()[Lcom/muvee/video/trimer/MainActivity$VTState;
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 1
    sget-object v0, Lcom/muvee/video/trimer/MainActivity$VTState;->ENUM$VALUES:[Lcom/muvee/video/trimer/MainActivity$VTState;

    array-length v1, v0

    new-array v2, v1, [Lcom/muvee/video/trimer/MainActivity$VTState;

    invoke-static {v0, v3, v2, v3, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    return-object v2
.end method
