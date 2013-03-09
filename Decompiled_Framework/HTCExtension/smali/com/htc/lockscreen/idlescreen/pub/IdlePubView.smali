.class public Lcom/htc/lockscreen/idlescreen/pub/IdlePubView;
.super Ljava/lang/Object;
.source "IdlePubView.java"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator; = null
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Lcom/htc/lockscreen/idlescreen/pub/IdlePubView;",
            ">;"
        }
    .end annotation
.end field

.field private static final LOG_TAG:Ljava/lang/String; = "IdlePubView"


# instance fields
.field private mDescript:Ljava/lang/String;

.field private mHint:Ljava/lang/String;

.field private mIcon:Landroid/graphics/Bitmap;

.field private mMode10:Ljava/lang/String;

.field private mPackageName:Ljava/lang/String;

.field private mTitle:Ljava/lang/String;

.field private mWakeUp:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/htc/lockscreen/idlescreen/pub/IdlePubView$1;

    invoke-direct {v0}, Lcom/htc/lockscreen/idlescreen/pub/IdlePubView$1;-><init>()V

    sput-object v0, Lcom/htc/lockscreen/idlescreen/pub/IdlePubView;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>(Landroid/os/Parcel;)V
    .locals 4

    const/4 v3, 0x0

    const/4 v2, 0x1

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    const-string v1, ""

    iput-object v1, p0, Lcom/htc/lockscreen/idlescreen/pub/IdlePubView;->mPackageName:Ljava/lang/String;

    const-string v1, ""

    iput-object v1, p0, Lcom/htc/lockscreen/idlescreen/pub/IdlePubView;->mMode10:Ljava/lang/String;

    const-string v1, ""

    iput-object v1, p0, Lcom/htc/lockscreen/idlescreen/pub/IdlePubView;->mTitle:Ljava/lang/String;

    const-string v1, ""

    iput-object v1, p0, Lcom/htc/lockscreen/idlescreen/pub/IdlePubView;->mDescript:Ljava/lang/String;

    const-string v1, ""

    iput-object v1, p0, Lcom/htc/lockscreen/idlescreen/pub/IdlePubView;->mHint:Ljava/lang/String;

    iput-boolean v3, p0, Lcom/htc/lockscreen/idlescreen/pub/IdlePubView;->mWakeUp:Z

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/htc/lockscreen/idlescreen/pub/IdlePubView;->mPackageName:Ljava/lang/String;

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-ne v0, v2, :cond_0

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/htc/lockscreen/idlescreen/pub/IdlePubView;->mMode10:Ljava/lang/String;

    :cond_0
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-ne v0, v2, :cond_1

    sget-object v1, Landroid/graphics/Bitmap;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v1, p1}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/graphics/Bitmap;

    iput-object v1, p0, Lcom/htc/lockscreen/idlescreen/pub/IdlePubView;->mIcon:Landroid/graphics/Bitmap;

    :cond_1
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-ne v0, v2, :cond_2

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/htc/lockscreen/idlescreen/pub/IdlePubView;->mTitle:Ljava/lang/String;

    :cond_2
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-ne v0, v2, :cond_3

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/htc/lockscreen/idlescreen/pub/IdlePubView;->mDescript:Ljava/lang/String;

    :cond_3
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-ne v0, v2, :cond_4

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/htc/lockscreen/idlescreen/pub/IdlePubView;->mHint:Ljava/lang/String;

    :cond_4
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    if-ne v1, v2, :cond_5

    move v1, v2

    :goto_0
    iput-boolean v1, p0, Lcom/htc/lockscreen/idlescreen/pub/IdlePubView;->mWakeUp:Z

    return-void

    :cond_5
    move v1, v3

    goto :goto_0
.end method

.method public constructor <init>(Ljava/lang/String;Landroid/graphics/Bitmap;Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    const-string v0, ""

    iput-object v0, p0, Lcom/htc/lockscreen/idlescreen/pub/IdlePubView;->mPackageName:Ljava/lang/String;

    const-string v0, ""

    iput-object v0, p0, Lcom/htc/lockscreen/idlescreen/pub/IdlePubView;->mMode10:Ljava/lang/String;

    const-string v0, ""

    iput-object v0, p0, Lcom/htc/lockscreen/idlescreen/pub/IdlePubView;->mTitle:Ljava/lang/String;

    const-string v0, ""

    iput-object v0, p0, Lcom/htc/lockscreen/idlescreen/pub/IdlePubView;->mDescript:Ljava/lang/String;

    const-string v0, ""

    iput-object v0, p0, Lcom/htc/lockscreen/idlescreen/pub/IdlePubView;->mHint:Ljava/lang/String;

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/htc/lockscreen/idlescreen/pub/IdlePubView;->mWakeUp:Z

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "packageName is null or empty"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    iput-object p1, p0, Lcom/htc/lockscreen/idlescreen/pub/IdlePubView;->mPackageName:Ljava/lang/String;

    iput-object p2, p0, Lcom/htc/lockscreen/idlescreen/pub/IdlePubView;->mIcon:Landroid/graphics/Bitmap;

    iput-object p3, p0, Lcom/htc/lockscreen/idlescreen/pub/IdlePubView;->mTitle:Ljava/lang/String;

    iput-object p4, p0, Lcom/htc/lockscreen/idlescreen/pub/IdlePubView;->mDescript:Ljava/lang/String;

    const-string v0, ""

    iput-object v0, p0, Lcom/htc/lockscreen/idlescreen/pub/IdlePubView;->mHint:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Landroid/graphics/Bitmap;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    const-string v0, ""

    iput-object v0, p0, Lcom/htc/lockscreen/idlescreen/pub/IdlePubView;->mPackageName:Ljava/lang/String;

    const-string v0, ""

    iput-object v0, p0, Lcom/htc/lockscreen/idlescreen/pub/IdlePubView;->mMode10:Ljava/lang/String;

    const-string v0, ""

    iput-object v0, p0, Lcom/htc/lockscreen/idlescreen/pub/IdlePubView;->mTitle:Ljava/lang/String;

    const-string v0, ""

    iput-object v0, p0, Lcom/htc/lockscreen/idlescreen/pub/IdlePubView;->mDescript:Ljava/lang/String;

    const-string v0, ""

    iput-object v0, p0, Lcom/htc/lockscreen/idlescreen/pub/IdlePubView;->mHint:Ljava/lang/String;

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/htc/lockscreen/idlescreen/pub/IdlePubView;->mWakeUp:Z

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "packageName is null or empty"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    iput-object p1, p0, Lcom/htc/lockscreen/idlescreen/pub/IdlePubView;->mPackageName:Ljava/lang/String;

    iput-object p2, p0, Lcom/htc/lockscreen/idlescreen/pub/IdlePubView;->mIcon:Landroid/graphics/Bitmap;

    iput-object p3, p0, Lcom/htc/lockscreen/idlescreen/pub/IdlePubView;->mTitle:Ljava/lang/String;

    iput-object p4, p0, Lcom/htc/lockscreen/idlescreen/pub/IdlePubView;->mDescript:Ljava/lang/String;

    iput-object p5, p0, Lcom/htc/lockscreen/idlescreen/pub/IdlePubView;->mHint:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public getDescript()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/htc/lockscreen/idlescreen/pub/IdlePubView;->mDescript:Ljava/lang/String;

    return-object v0
.end method

.method public getHint()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/htc/lockscreen/idlescreen/pub/IdlePubView;->mHint:Ljava/lang/String;

    return-object v0
.end method

.method public getIcon()Landroid/graphics/Bitmap;
    .locals 1

    iget-object v0, p0, Lcom/htc/lockscreen/idlescreen/pub/IdlePubView;->mIcon:Landroid/graphics/Bitmap;

    return-object v0
.end method

.method public getPackageName()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/htc/lockscreen/idlescreen/pub/IdlePubView;->mPackageName:Ljava/lang/String;

    return-object v0
.end method

.method public getTitle()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/htc/lockscreen/idlescreen/pub/IdlePubView;->mTitle:Ljava/lang/String;

    return-object v0
.end method

.method public isWakeUp()Z
    .locals 1

    iget-boolean v0, p0, Lcom/htc/lockscreen/idlescreen/pub/IdlePubView;->mWakeUp:Z

    return v0
.end method

.method public setDescript(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/htc/lockscreen/idlescreen/pub/IdlePubView;->mDescript:Ljava/lang/String;

    return-void
.end method

.method public setHint(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/htc/lockscreen/idlescreen/pub/IdlePubView;->mHint:Ljava/lang/String;

    return-void
.end method

.method public setIcon(Landroid/graphics/Bitmap;)V
    .locals 0

    iput-object p1, p0, Lcom/htc/lockscreen/idlescreen/pub/IdlePubView;->mIcon:Landroid/graphics/Bitmap;

    return-void
.end method

.method public setTitle(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/htc/lockscreen/idlescreen/pub/IdlePubView;->mTitle:Ljava/lang/String;

    return-void
.end method

.method public setWakeUp(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/htc/lockscreen/idlescreen/pub/IdlePubView;->mWakeUp:Z

    return-void
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 3

    const/4 v2, 0x1

    const/4 v1, 0x0

    iget-object v0, p0, Lcom/htc/lockscreen/idlescreen/pub/IdlePubView;->mPackageName:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/htc/lockscreen/idlescreen/pub/IdlePubView;->mMode10:Ljava/lang/String;

    if-eqz v0, :cond_0

    invoke-virtual {p1, v2}, Landroid/os/Parcel;->writeInt(I)V

    iget-object v0, p0, Lcom/htc/lockscreen/idlescreen/pub/IdlePubView;->mMode10:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    :goto_0
    iget-object v0, p0, Lcom/htc/lockscreen/idlescreen/pub/IdlePubView;->mIcon:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_1

    invoke-virtual {p1, v2}, Landroid/os/Parcel;->writeInt(I)V

    iget-object v0, p0, Lcom/htc/lockscreen/idlescreen/pub/IdlePubView;->mIcon:Landroid/graphics/Bitmap;

    invoke-virtual {v0, p1, p2}, Landroid/graphics/Bitmap;->writeToParcel(Landroid/os/Parcel;I)V

    :goto_1
    iget-object v0, p0, Lcom/htc/lockscreen/idlescreen/pub/IdlePubView;->mTitle:Ljava/lang/String;

    if-eqz v0, :cond_2

    invoke-virtual {p1, v2}, Landroid/os/Parcel;->writeInt(I)V

    iget-object v0, p0, Lcom/htc/lockscreen/idlescreen/pub/IdlePubView;->mTitle:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    :goto_2
    iget-object v0, p0, Lcom/htc/lockscreen/idlescreen/pub/IdlePubView;->mDescript:Ljava/lang/String;

    if-eqz v0, :cond_3

    invoke-virtual {p1, v2}, Landroid/os/Parcel;->writeInt(I)V

    iget-object v0, p0, Lcom/htc/lockscreen/idlescreen/pub/IdlePubView;->mDescript:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    :goto_3
    iget-object v0, p0, Lcom/htc/lockscreen/idlescreen/pub/IdlePubView;->mHint:Ljava/lang/String;

    if-eqz v0, :cond_4

    invoke-virtual {p1, v2}, Landroid/os/Parcel;->writeInt(I)V

    iget-object v0, p0, Lcom/htc/lockscreen/idlescreen/pub/IdlePubView;->mHint:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    :goto_4
    iget-boolean v0, p0, Lcom/htc/lockscreen/idlescreen/pub/IdlePubView;->mWakeUp:Z

    if-eqz v0, :cond_5

    invoke-virtual {p1, v2}, Landroid/os/Parcel;->writeInt(I)V

    :goto_5
    return-void

    :cond_0
    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_0

    :cond_1
    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_1

    :cond_2
    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_2

    :cond_3
    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_3

    :cond_4
    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_4

    :cond_5
    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_5
.end method
