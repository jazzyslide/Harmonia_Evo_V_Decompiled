.class public Lcom/htc/util/mail/lib/org/apache/commons/io/output/NullWriter;
.super Ljava/io/Writer;
.source "NullWriter.java"


# static fields
.field public static final NULL_WRITER:Lcom/htc/util/mail/lib/org/apache/commons/io/output/NullWriter;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/htc/util/mail/lib/org/apache/commons/io/output/NullWriter;

    invoke-direct {v0}, Lcom/htc/util/mail/lib/org/apache/commons/io/output/NullWriter;-><init>()V

    sput-object v0, Lcom/htc/util/mail/lib/org/apache/commons/io/output/NullWriter;->NULL_WRITER:Lcom/htc/util/mail/lib/org/apache/commons/io/output/NullWriter;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/io/Writer;-><init>()V

    return-void
.end method


# virtual methods
.method public close()V
    .locals 0

    return-void
.end method

.method public flush()V
    .locals 0

    return-void
.end method

.method public write(I)V
    .locals 0

    return-void
.end method

.method public write(Ljava/lang/String;)V
    .locals 0

    return-void
.end method

.method public write(Ljava/lang/String;II)V
    .locals 0

    return-void
.end method

.method public write([C)V
    .locals 0

    return-void
.end method

.method public write([CII)V
    .locals 0

    return-void
.end method
