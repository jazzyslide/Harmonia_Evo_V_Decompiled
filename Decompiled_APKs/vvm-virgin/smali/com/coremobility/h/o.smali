.class public final Lcom/coremobility/h/o;
.super Lcom/coremobility/integration/c/c;


# instance fields
.field public a:I

.field public b:Z

.field public c:Ljava/lang/String;


# direct methods
.method public constructor <init>(IZLjava/lang/String;)V
    .locals 1

    invoke-direct {p0}, Lcom/coremobility/integration/c/c;-><init>()V

    const v0, 0x30524147

    iput v0, p0, Lcom/coremobility/h/o;->m:I

    iput p1, p0, Lcom/coremobility/h/o;->a:I

    iput-boolean p2, p0, Lcom/coremobility/h/o;->b:Z

    iput-object p3, p0, Lcom/coremobility/h/o;->c:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public final a()V
    .locals 5

    const/16 v1, 0x32

    const-string v2, "CM+RS t-fail ( %d, %b ) %s"

    const/4 v0, 0x3

    new-array v3, v0, [Ljava/lang/Object;

    const/4 v0, 0x0

    iget v4, p0, Lcom/coremobility/h/o;->a:I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v3, v0

    const/4 v0, 0x1

    iget-boolean v4, p0, Lcom/coremobility/h/o;->b:Z

    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    aput-object v4, v3, v0

    const/4 v4, 0x2

    iget-object v0, p0, Lcom/coremobility/h/o;->c:Ljava/lang/String;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/coremobility/h/o;->c:Ljava/lang/String;

    :goto_0
    aput-object v0, v3, v4

    invoke-static {v1, v2, v3}, Lcom/coremobility/integration/c/a;->a(ILjava/lang/String;[Ljava/lang/Object;)V

    return-void

    :cond_0
    const-string v0, ""

    goto :goto_0
.end method
