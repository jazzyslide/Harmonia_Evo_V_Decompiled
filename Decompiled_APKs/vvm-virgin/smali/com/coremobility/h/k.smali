.class public final Lcom/coremobility/h/k;
.super Lcom/coremobility/integration/c/c;


# instance fields
.field public a:I

.field public b:I


# direct methods
.method public constructor <init>(II)V
    .locals 1

    invoke-direct {p0}, Lcom/coremobility/integration/c/c;-><init>()V

    const v0, 0x30524145

    iput v0, p0, Lcom/coremobility/h/k;->m:I

    iput p1, p0, Lcom/coremobility/h/k;->a:I

    iput p2, p0, Lcom/coremobility/h/k;->b:I

    return-void
.end method


# virtual methods
.method public final a()V
    .locals 3

    const/16 v0, 0x32

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "CM+RS >rcvOk "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/coremobility/h/k;->a:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/coremobility/h/k;->b:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {v0, v1, v2}, Lcom/coremobility/integration/c/a;->d(ILjava/lang/String;[Ljava/lang/Object;)V

    return-void
.end method
