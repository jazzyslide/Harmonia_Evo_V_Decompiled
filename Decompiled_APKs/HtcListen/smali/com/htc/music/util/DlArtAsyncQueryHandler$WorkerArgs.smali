.class public final Lcom/htc/music/util/DlArtAsyncQueryHandler$WorkerArgs;
.super Ljava/lang/Object;
.source "DlArtAsyncQueryHandler.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/htc/music/util/DlArtAsyncQueryHandler;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1c
    name = "WorkerArgs"
.end annotation


# instance fields
.field public cookie:Ljava/lang/Object;

.field public handler:Landroid/os/Handler;

.field public orderBy:Ljava/lang/String;

.field public projection:[Ljava/lang/String;

.field public result:Ljava/lang/Object;

.field public selection:Ljava/lang/String;

.field public selectionArgs:[Ljava/lang/String;

.field public uri:Landroid/net/Uri;

.field public values:Landroid/content/ContentValues;


# direct methods
.method protected constructor <init>()V
    .locals 0

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
