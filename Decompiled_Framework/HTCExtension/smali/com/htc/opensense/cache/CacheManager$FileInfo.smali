.class Lcom/htc/opensense/cache/CacheManager$FileInfo;
.super Ljava/lang/Object;
.source "CacheManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/htc/opensense/cache/CacheManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "FileInfo"
.end annotation


# instance fields
.field size:I

.field final synthetic this$0:Lcom/htc/opensense/cache/CacheManager;

.field uri:Landroid/net/Uri;


# direct methods
.method public constructor <init>(Lcom/htc/opensense/cache/CacheManager;Landroid/net/Uri;I)V
    .locals 0

    iput-object p1, p0, Lcom/htc/opensense/cache/CacheManager$FileInfo;->this$0:Lcom/htc/opensense/cache/CacheManager;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    iput-object p2, p0, Lcom/htc/opensense/cache/CacheManager$FileInfo;->uri:Landroid/net/Uri;

    iput p3, p0, Lcom/htc/opensense/cache/CacheManager$FileInfo;->size:I

    return-void
.end method
