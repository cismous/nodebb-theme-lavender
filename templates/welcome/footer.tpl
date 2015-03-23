</body>
<script>
    function setHeight () {
        document.getElementsByTagName('body')[0].style.height = window.innerHeight + 'px';
    }

    window.onresize = setHeight;

    window.dispatchEvent(new Event('resize'));
</script>
</html>
