window.addEventListener("DOMContentLoaded", (event) => {  // Wait until DOMContentLoaded has completed
    const el = document.getElementById('restyleBtn'); // check that el is not null before adding an event listener
    if (el) {
        el.addEventListener(
            'click',
            function () {
                $(document).ready(
                    function () {
                        $('body').css(
                            {
                                "font-family": "monospace",
                                "margin": "0",
                                "padding": "0",
                                "background-color": "black",
                                "color": "white",
                                "padding": "0 8%",
                            }
                        );
                        $("header").css(
                            {
                                "background-color": "#000000",
                                "color": "#22ff00",
                                "text-align": "center",
                                "padding": "20px",
                            }
                        );
                        $(".container").css({

                            "width": "80%",
                            "margin": "0 auto",
                            "padding": "20px",
                            "background-color": "#000000",
                            "border-radius": "5px",

                        });
                        $("h1").css("margin-top", "0");
                        $("h2").css("color", "#22ff00");
                        $("p").css("line-height", "1.5");
                        $("ul").css({
                            "list-style-type": "disc",
                            "margin-left": "20px",
                        });
                        $("footer").css({
                            "text-align": "center",
                            "background-color": " #000000",
                            "color": "#22ff00",
                            "padding": "10px 0"
                        });
                        $("button#restyleBtn").css("visibility","hidden");
                    }
                );
            });
    }
});