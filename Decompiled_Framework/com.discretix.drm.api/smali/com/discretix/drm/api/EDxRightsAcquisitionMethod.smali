.class public final enum Lcom/discretix/drm/api/EDxRightsAcquisitionMethod;
.super Ljava/lang/Enum;
.source "EDxRightsAcquisitionMethod.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/discretix/drm/api/EDxRightsAcquisitionMethod$SwigNext;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/discretix/drm/api/EDxRightsAcquisitionMethod;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/discretix/drm/api/EDxRightsAcquisitionMethod;

.field public static final enum DX_NUM_OF_ACQ_METHODS:Lcom/discretix/drm/api/EDxRightsAcquisitionMethod;

.field public static final enum DX_RIGHT_ACQ_METHOD_NORMAL:Lcom/discretix/drm/api/EDxRightsAcquisitionMethod;

.field public static final enum DX_RIGHT_ACQ_METHOD_PREVIEW:Lcom/discretix/drm/api/EDxRightsAcquisitionMethod;

.field public static final enum DX_RIGHT_ACQ_METHOD_SILENT:Lcom/discretix/drm/api/EDxRightsAcquisitionMethod;


# instance fields
.field private final swigValue:I


# direct methods
.method static constructor <clinit>()V
    .locals 6

    const/4 v5, 0x3

    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    new-instance v0, Lcom/discretix/drm/api/EDxRightsAcquisitionMethod;

    const-string v1, "DX_RIGHT_ACQ_METHOD_NORMAL"

    invoke-direct {v0, v1, v2}, Lcom/discretix/drm/api/EDxRightsAcquisitionMethod;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/discretix/drm/api/EDxRightsAcquisitionMethod;->DX_RIGHT_ACQ_METHOD_NORMAL:Lcom/discretix/drm/api/EDxRightsAcquisitionMethod;

    new-instance v0, Lcom/discretix/drm/api/EDxRightsAcquisitionMethod;

    const-string v1, "DX_RIGHT_ACQ_METHOD_SILENT"

    invoke-direct {v0, v1, v3}, Lcom/discretix/drm/api/EDxRightsAcquisitionMethod;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/discretix/drm/api/EDxRightsAcquisitionMethod;->DX_RIGHT_ACQ_METHOD_SILENT:Lcom/discretix/drm/api/EDxRightsAcquisitionMethod;

    new-instance v0, Lcom/discretix/drm/api/EDxRightsAcquisitionMethod;

    const-string v1, "DX_RIGHT_ACQ_METHOD_PREVIEW"

    invoke-direct {v0, v1, v4}, Lcom/discretix/drm/api/EDxRightsAcquisitionMethod;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/discretix/drm/api/EDxRightsAcquisitionMethod;->DX_RIGHT_ACQ_METHOD_PREVIEW:Lcom/discretix/drm/api/EDxRightsAcquisitionMethod;

    new-instance v0, Lcom/discretix/drm/api/EDxRightsAcquisitionMethod;

    const-string v1, "DX_NUM_OF_ACQ_METHODS"

    invoke-direct {v0, v1, v5}, Lcom/discretix/drm/api/EDxRightsAcquisitionMethod;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/discretix/drm/api/EDxRightsAcquisitionMethod;->DX_NUM_OF_ACQ_METHODS:Lcom/discretix/drm/api/EDxRightsAcquisitionMethod;

    const/4 v0, 0x4

    new-array v0, v0, [Lcom/discretix/drm/api/EDxRightsAcquisitionMethod;

    sget-object v1, Lcom/discretix/drm/api/EDxRightsAcquisitionMethod;->DX_RIGHT_ACQ_METHOD_NORMAL:Lcom/discretix/drm/api/EDxRightsAcquisitionMethod;

    aput-object v1, v0, v2

    sget-object v1, Lcom/discretix/drm/api/EDxRightsAcquisitionMethod;->DX_RIGHT_ACQ_METHOD_SILENT:Lcom/discretix/drm/api/EDxRightsAcquisitionMethod;

    aput-object v1, v0, v3

    sget-object v1, Lcom/discretix/drm/api/EDxRightsAcquisitionMethod;->DX_RIGHT_ACQ_METHOD_PREVIEW:Lcom/discretix/drm/api/EDxRightsAcquisitionMethod;

    aput-object v1, v0, v4

    sget-object v1, Lcom/discretix/drm/api/EDxRightsAcquisitionMethod;->DX_NUM_OF_ACQ_METHODS:Lcom/discretix/drm/api/EDxRightsAcquisitionMethod;

    aput-object v1, v0, v5

    sput-object v0, Lcom/discretix/drm/api/EDxRightsAcquisitionMethod;->$VALUES:[Lcom/discretix/drm/api/EDxRightsAcquisitionMethod;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    invoke-static {}, Lcom/discretix/drm/api/EDxRightsAcquisitionMethod$SwigNext;->access$008()I

    move-result v0

    iput v0, p0, Lcom/discretix/drm/api/EDxRightsAcquisitionMethod;->swigValue:I

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;II)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)V"
        }
    .end annotation

    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    iput p3, p0, Lcom/discretix/drm/api/EDxRightsAcquisitionMethod;->swigValue:I

    add-int/lit8 v0, p3, 0x1

    invoke-static {v0}, Lcom/discretix/drm/api/EDxRightsAcquisitionMethod$SwigNext;->access$002(I)I

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;ILcom/discretix/drm/api/EDxRightsAcquisitionMethod;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/discretix/drm/api/EDxRightsAcquisitionMethod;",
            ")V"
        }
    .end annotation

    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    iget v0, p3, Lcom/discretix/drm/api/EDxRightsAcquisitionMethod;->swigValue:I

    iput v0, p0, Lcom/discretix/drm/api/EDxRightsAcquisitionMethod;->swigValue:I

    iget v0, p0, Lcom/discretix/drm/api/EDxRightsAcquisitionMethod;->swigValue:I

    add-int/lit8 v0, v0, 0x1

    invoke-static {v0}, Lcom/discretix/drm/api/EDxRightsAcquisitionMethod$SwigNext;->access$002(I)I

    return-void
.end method

.method public static swigToEnum(I)Lcom/discretix/drm/api/EDxRightsAcquisitionMethod;
    .locals 8

    const-class v5, Lcom/discretix/drm/api/EDxRightsAcquisitionMethod;

    invoke-virtual {v5}, Ljava/lang/Class;->getEnumConstants()[Ljava/lang/Object;

    move-result-object v4

    check-cast v4, [Lcom/discretix/drm/api/EDxRightsAcquisitionMethod;

    array-length v5, v4

    if-ge p0, v5, :cond_1

    if-ltz p0, :cond_1

    aget-object v5, v4, p0

    iget v5, v5, Lcom/discretix/drm/api/EDxRightsAcquisitionMethod;->swigValue:I

    if-ne v5, p0, :cond_1

    aget-object v3, v4, p0

    :cond_0
    return-object v3

    :cond_1
    move-object v0, v4

    array-length v2, v0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v2, :cond_2

    aget-object v3, v0, v1

    iget v5, v3, Lcom/discretix/drm/api/EDxRightsAcquisitionMethod;->swigValue:I

    if-eq v5, p0, :cond_0

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_2
    new-instance v5, Ljava/lang/IllegalArgumentException;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "No enum "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-class v7, Lcom/discretix/drm/api/EDxRightsAcquisitionMethod;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " with value "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v6}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v5
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/discretix/drm/api/EDxRightsAcquisitionMethod;
    .locals 1

    const-class v0, Lcom/discretix/drm/api/EDxRightsAcquisitionMethod;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/discretix/drm/api/EDxRightsAcquisitionMethod;

    return-object v0
.end method

.method public static values()[Lcom/discretix/drm/api/EDxRightsAcquisitionMethod;
    .locals 1

    sget-object v0, Lcom/discretix/drm/api/EDxRightsAcquisitionMethod;->$VALUES:[Lcom/discretix/drm/api/EDxRightsAcquisitionMethod;

    invoke-virtual {v0}, [Lcom/discretix/drm/api/EDxRightsAcquisitionMethod;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/discretix/drm/api/EDxRightsAcquisitionMethod;

    return-object v0
.end method


# virtual methods
.method public final swigValue()I
    .locals 1

    iget v0, p0, Lcom/discretix/drm/api/EDxRightsAcquisitionMethod;->swigValue:I

    return v0
.end method
