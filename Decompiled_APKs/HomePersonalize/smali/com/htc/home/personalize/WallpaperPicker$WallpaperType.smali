.class public final enum Lcom/htc/home/personalize/WallpaperPicker$WallpaperType;
.super Ljava/lang/Enum;
.source "WallpaperPicker.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/htc/home/personalize/WallpaperPicker;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "WallpaperType"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/htc/home/personalize/WallpaperPicker$WallpaperType;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/htc/home/personalize/WallpaperPicker$WallpaperType;

.field public static final enum BUILDIN:Lcom/htc/home/personalize/WallpaperPicker$WallpaperType;

.field public static final enum INVALID:Lcom/htc/home/personalize/WallpaperPicker$WallpaperType;

.field public static final enum NETWORK:Lcom/htc/home/personalize/WallpaperPicker$WallpaperType;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .prologue
    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 189
    new-instance v0, Lcom/htc/home/personalize/WallpaperPicker$WallpaperType;

    const-string v1, "INVALID"

    invoke-direct {v0, v1, v2}, Lcom/htc/home/personalize/WallpaperPicker$WallpaperType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/htc/home/personalize/WallpaperPicker$WallpaperType;->INVALID:Lcom/htc/home/personalize/WallpaperPicker$WallpaperType;

    .line 190
    new-instance v0, Lcom/htc/home/personalize/WallpaperPicker$WallpaperType;

    const-string v1, "BUILDIN"

    invoke-direct {v0, v1, v3}, Lcom/htc/home/personalize/WallpaperPicker$WallpaperType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/htc/home/personalize/WallpaperPicker$WallpaperType;->BUILDIN:Lcom/htc/home/personalize/WallpaperPicker$WallpaperType;

    .line 191
    new-instance v0, Lcom/htc/home/personalize/WallpaperPicker$WallpaperType;

    const-string v1, "NETWORK"

    invoke-direct {v0, v1, v4}, Lcom/htc/home/personalize/WallpaperPicker$WallpaperType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/htc/home/personalize/WallpaperPicker$WallpaperType;->NETWORK:Lcom/htc/home/personalize/WallpaperPicker$WallpaperType;

    .line 188
    const/4 v0, 0x3

    new-array v0, v0, [Lcom/htc/home/personalize/WallpaperPicker$WallpaperType;

    sget-object v1, Lcom/htc/home/personalize/WallpaperPicker$WallpaperType;->INVALID:Lcom/htc/home/personalize/WallpaperPicker$WallpaperType;

    aput-object v1, v0, v2

    sget-object v1, Lcom/htc/home/personalize/WallpaperPicker$WallpaperType;->BUILDIN:Lcom/htc/home/personalize/WallpaperPicker$WallpaperType;

    aput-object v1, v0, v3

    sget-object v1, Lcom/htc/home/personalize/WallpaperPicker$WallpaperType;->NETWORK:Lcom/htc/home/personalize/WallpaperPicker$WallpaperType;

    aput-object v1, v0, v4

    sput-object v0, Lcom/htc/home/personalize/WallpaperPicker$WallpaperType;->$VALUES:[Lcom/htc/home/personalize/WallpaperPicker$WallpaperType;

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
    .line 188
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/htc/home/personalize/WallpaperPicker$WallpaperType;
    .locals 1
    .parameter "name"

    .prologue
    .line 188
    const-class v0, Lcom/htc/home/personalize/WallpaperPicker$WallpaperType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/htc/home/personalize/WallpaperPicker$WallpaperType;

    return-object v0
.end method

.method public static values()[Lcom/htc/home/personalize/WallpaperPicker$WallpaperType;
    .locals 1

    .prologue
    .line 188
    sget-object v0, Lcom/htc/home/personalize/WallpaperPicker$WallpaperType;->$VALUES:[Lcom/htc/home/personalize/WallpaperPicker$WallpaperType;

    invoke-virtual {v0}, [Lcom/htc/home/personalize/WallpaperPicker$WallpaperType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/htc/home/personalize/WallpaperPicker$WallpaperType;

    return-object v0
.end method
